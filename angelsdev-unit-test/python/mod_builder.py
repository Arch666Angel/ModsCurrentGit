import os, shutil, sys, getopt
import json

class ModBuilder:

  def __init__(self, factorioFolderDir=None):
    self.modNames = [modName for modName in next(os.walk(f"{os.path.dirname(os.path.abspath(__file__))}/../.."))[1] if self.__isReleased(modName)]

    if factorioFolderDir == None:
      self.modFolderDir = "{0}/Factorio/mods/".format(os.getenv('APPDATA'))
    else:
      self.modFolderDir = "{0}mods/".format(factorioFolderDir)

  def __isReleased(self, modName):
    if modName.find("angels") >= 0:
      if modName.find("liquidrobot") >= 0:
        return False # not released

      if modName.find("angelsaddons-") < 0:
        return True # base mod

      if modName.find("angelsdev-") < 0:
        return True # dev mod

      return True # released addon

    return False # not part of angels

  def __getModVersion(self, modName):
    with open("{0}/info.json".format(modName)) as modDataFile:
      modData = json.load(modDataFile)
      return modData['version']

  def __deleteAllVersions(self, modName, deleteZip=True):
    # deleting folders
    folders = [folderName for folderName in next(os.walk(self.modFolderDir))[1] if folderName.find(modName) >= 0]
    for folder in folders:
      print("    Removing '{0}/'".format(folder))
      shutil.rmtree(self.modFolderDir + folder)

    # deleting zip folders
    folders = [folderName for folderName in os.listdir(self.modFolderDir) if deleteZip and folderName.find(modName) >= 0 ]
    for folder in folders:
      print("    Removing '{0}'".format(folder))
      os.remove(self.modFolderDir + folder)

  def __createNewVersion(self, modName):
    folder = "{0}_{1}/".format(modName, self.__getModVersion(modName))
    print("    Creating '{0}'".format(folder))

    src_dir = "./{0}".format(modName)
    dst_dir = self.modFolderDir + folder
    shutil.copytree(src_dir, dst_dir)

  def createMod(self, modName):
    print("Updating '{0}'".format(modName))
    self.__deleteAllVersions(modName, True)
    self.__createNewVersion(modName)

  def createAllMods(self):
    for modName in self.modNames:
      self.createMod(modName)

if __name__ == "__main__":
  factorioFolderDir = None
  opts, args = getopt.getopt(sys.argv[1:], ":m:", ['dir='])
  for opt, arg in opts:
    if opt in ('-m', '--factoriodir'):
      factorioFolderDir = os.path.realpath(arg.strip())

  ModBuilder(factorioFolderDir).createAllMods()