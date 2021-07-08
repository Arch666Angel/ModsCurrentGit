import os, subprocess
from shlex import shlex
import json
import re
from datetime import datetime

class FactorioController:
  def __init__(self):
    self.factorioExe = os.path.abspath(f"{self.__retrieveSteamGameInstallLocation(427520)}/bin/x64/factorio.exe")
    #self.factorioArgs = self.__createFactorioArgs(f"angelsdev-unit-test-{datetime.now().strftime(r'%y%m%d-%H%M%S')}.zip")
    self.factorioArgs = self.__createFactorioArgs("unittesting001.zip")
    print(self.factorioArgs)
    self.factorioProcess = None

  def launchGame(self) -> None:
    # https://developer.valvesoftware.com/wiki/Command_Line_Options#Steam_.28Windows.29
    print(f"angelsdev-unit-test: Launching {os.path.basename(self.factorioExe)}")
    self.factorioProcess = subprocess.Popen(executable=self.factorioExe, args=self.factorioArgs, cwd=os.path.dirname(self.factorioExe), stdout=subprocess.PIPE, stderr=subprocess.STDOUT)

  def terminateGame(self) -> None:
    if self.factorioProcess.poll() is None:
      self.factorioProcess.terminate()
      print(f"angelsdev-unit-test: Closing {os.path.basename(self.factorioExe)}")
    else:
      print(f"angelsdev-unit-test: {os.path.basename(self.factorioExe)} terminated unexpectedly...")
    self.factorioProcess = None

  def getGameOutput(self) -> str or bool:
    for stdoutLine in iter(self.factorioProcess.stdout.readline, ""):
      lineData = stdoutLine.strip().decode('utf-8')
      if lineData == '':
        yield self.factorioProcess.poll() is None
      else:
        yield lineData
    self.factorioProcess.stdout.close()
    return_code = self.factorioProcess.wait()
    if return_code:
      raise subprocess.CalledProcessError(return_code, self.factorioExe)
    return False # App terminated

  def executeUnitTests(self) -> None:
    # This does not actually execute anything, it waits till the mod signals the tests are finished while logging all unit test results
    for line in self.getGameOutput():
      if type(line) is str and re.fullmatch(r"angelsdev\-unit\-test: .*", line):
        print(line)
        if re.fullmatch(r"angelsdev\-unit\-test: Finished testing!", line):
          break # Finished expectedly
      elif type(line) is bool and line == False:
        break

  def __retrieveSteamGameInstallLocation(self, steamGameID:int) -> str:
    # Find install location of steam itself
    steamApp = subprocess.run(['reg','query','HKCU\Software\Valve\Steam','/v','SteamExe'], stdout=subprocess.PIPE).stdout.decode('utf-8')
    steamApp = [entry for line in steamApp.split('\r\n') for entry in line.split('    ') if os.path.exists(entry) and os.access(entry, os.F_OK) and os.access(entry, os.X_OK)]
    if len(steamApp) == 0:
      raise ValueError("Could not find a suitable steam installation")
    steamDir = os.path.dirname(steamApp[0])
    
    # Find install location of steam libraries
    def vdf2json(stream):
      # Code based on https://gist.github.com/ynsta/7221512c583fbfbafe6d#file-vdf2json-py-L5-L41
      def _istr(ident, string):
        return (ident * '  ') + string

      jbuf = '{\n'
      lex = shlex(stream)
      indent = 1

      while True:
        tok = lex.get_token()
        if not tok:
          return json.loads(jbuf + '}\n')
        if tok == '}':
          indent -= 1
          jbuf += _istr(indent, '}')
          ntok = lex.get_token()
          lex.push_token(ntok)
          if ntok and ntok != '}':
            jbuf += ','
          jbuf += '\n'
        else:
          ntok = lex.get_token()
          if ntok == '{':
            jbuf += _istr(indent, tok + ': {\n')
            indent += 1
          else:
            jbuf += _istr(indent, tok + ': ' + ntok)
            ntok = lex.get_token()
            lex.push_token(ntok)
            if ntok != '}':
              jbuf += ','
            jbuf += '\n'

    steamLibs = None
    with open(f"{steamDir}/steamapps/libraryfolders.vdf") as steamLibsFile:
      steamLibs = vdf2json(steamLibsFile.read())
    steamLibs = [v for k, v in steamLibs.get('LibraryFolders').items() if re.fullmatch(r"\d+", k)]

    # Find in which lib the game is installed
    steamGameManifestLocation = None
    for steamLib in steamLibs:
      steamGameManifestLocation = f"{steamLib}/steamapps/appmanifest_{steamGameID}.acf"
      if os.path.isfile(steamGameManifestLocation):
        break
    if steamGameManifestLocation is None:
      raise ValueError("Could not find install location.")

    # Find the install directory for the game
    steamGameManifest = None
    with open(steamGameManifestLocation) as steamGameManifestFile:
      steamGameManifest = vdf2json(steamGameManifestFile.read())
    steamGameName = steamGameManifest.get('AppState').get('name')
    steamGameFolder = f"{steamLib}/steamapps/common/{steamGameName}"

    # Make sure it has an appropriate steam_appid.txt file
    steamAppIDLocation = f"{steamGameFolder}/bin/x64/steam_appid.txt"
    if not os.path.exists(steamAppIDLocation):
      with open(steamAppIDLocation, 'w') as steamAppIDFile:
        steamAppIDFile.write(f"{steamGameID}")

    return steamGameFolder

  def __createFactorioArgs(self, saveFileName:str) -> list:
    def convert_to_arglist(arg:str) -> list:
      return arg.split(' ')

    # https://wiki.factorio.com/Command_line_parameters
    args = []
    args.append(self.factorioExe)
    #args.extend(convert_to_arglist("--verbose"))
    #args.extend(convert_to_arglist(f"--create {os.path.abspath(os.getenv('APPDATA'))}/Factorio/saves/{saveFileName}".replace("\\", "/")))
    args.extend(convert_to_arglist(f"--load-scenario base/freeplay"))
    args.extend(convert_to_arglist(f"--mod-directory {os.path.abspath(os.getenv('APPDATA'))}/Factorio/mods/".replace("\\", "/")))
    
    return args

if __name__ == "__main__":
  fc = FactorioController()
  fc.launchGame()
  fc.executeUnitTests()
  fc.terminateGame()