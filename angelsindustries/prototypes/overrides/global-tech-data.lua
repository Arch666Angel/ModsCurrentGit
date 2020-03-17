--KEY TECHs
angelsmods.functions.add_exception("tech-red-packs")
angelsmods.functions.add_exception("tech-green-packs")
angelsmods.functions.add_exception("tech-orange-packs")
angelsmods.functions.add_exception("tech-blue-packs")
angelsmods.functions.add_exception("tech-yellow-packs")
angelsmods.functions.add_exception("rocket-silo")

angelsmods.functions.add_exception("tech-specialised-labs-basic-exploration-1")
angelsmods.functions.add_exception("tech-specialised-labs-basic-exploration-2")
angelsmods.functions.add_exception("tech-specialised-labs-basic-exploration-3")
angelsmods.functions.add_exception("tech-specialised-labs-advanced-exploration-1")
angelsmods.functions.add_exception("tech-specialised-labs-advanced-exploration-2")
angelsmods.functions.add_exception("tech-specialised-labs-basic-energy-1")
angelsmods.functions.add_exception("tech-specialised-labs-basic-energy-2")
angelsmods.functions.add_exception("tech-specialised-labs-basic-energy-3")
angelsmods.functions.add_exception("tech-specialised-labs-advanced-energy-1")
angelsmods.functions.add_exception("tech-specialised-labs-advanced-energy-2")
angelsmods.functions.add_exception("tech-specialised-labs-basic-logistic-1")
angelsmods.functions.add_exception("tech-specialised-labs-basic-logistic-2")
angelsmods.functions.add_exception("tech-specialised-labs-basic-logistic-3")
angelsmods.functions.add_exception("tech-specialised-labs-advanced-logistic-1")
angelsmods.functions.add_exception("tech-specialised-labs-advanced-logistic-2")
angelsmods.functions.add_exception("tech-specialised-labs-basic-enhance-1")
angelsmods.functions.add_exception("tech-specialised-labs-basic-enhance-2")
angelsmods.functions.add_exception("tech-specialised-labs-basic-enhance-3")
angelsmods.functions.add_exception("tech-specialised-labs-advanced-enhance-1")
angelsmods.functions.add_exception("tech-specialised-labs-advanced-enhance-2")
angelsmods.functions.add_exception("tech-specialised-labs-basic-processing-1")
angelsmods.functions.add_exception("tech-specialised-labs-basic-processing-2")
angelsmods.functions.add_exception("tech-specialised-labs-basic-processing-3")
angelsmods.functions.add_exception("tech-specialised-labs-advanced-processing-1")
angelsmods.functions.add_exception("tech-specialised-labs-advanced-processing-2")
angelsmods.functions.add_exception("tech-specialised-labs-basic-war-1")
angelsmods.functions.add_exception("tech-specialised-labs-basic-war-2")
angelsmods.functions.add_exception("tech-specialised-labs-basic-war-3")
angelsmods.functions.add_exception("tech-specialised-labs-advanced-war-1")
angelsmods.functions.add_exception("tech-specialised-labs-advanced-war-2")
angelsmods.functions.add_exception("tech-specialised-labs-basic")
angelsmods.functions.add_exception("tech-specialised-labs-advanced")

--BIO PROCESSING (not sure these are activated... i may have overridden these anyway)
angelsmods.functions.add_exception("bio-temperate-farming")
angelsmods.functions.add_exception("bio-temperate-farm")
angelsmods.functions.add_exception("bio-desert-farming")
angelsmods.functions.add_exception("bio-desert-farm")
angelsmods.functions.add_exception("bio-swamp-farming")
angelsmods.functions.add_exception("bio-swamp-farm")
-- EXCLUDE BOBS MODULES
if mods['bobmodules'] then
  angelsmods.functions.add_exception("module-merging")
	--removes enhancement core from module techs (not modules)
	for rec_4tech in pairs(data.raw.technology) do
	  --fix modules to still work in bobs module lab
	  if string.find(rec_4tech,"-module-")~=nil  then
	    angelsmods.functions.add_exception(rec_4tech)
		end
	end
end
