--INITIALIZE
angelsmods = angelsmods or {}
angelsmods.petrochem = angelsmods.petrochem or {}
angelsmods.petrochem.number_tint = {r = 0.8, g = 0.8, b = 0.8, a = 0.5}

--TRIGGER CHECKS
angelsmods.trigger = angelsmods.trigger or {}

--CONVERTER RECIPES
angelsmods.trigger.enableconverter = settings.startup["angels-enable-converter"].value
angelsmods.trigger.hideconverter = settings.startup["angels-hide-converter"].value

--ACID OVERRIDE FOR REFINING
angelsmods.trigger.enableacids = settings.startup["angels-enable-acids"].value

--LOAD PROTOTYPES
require("prototypes.petrochem-category")

require("prototypes.generation.angels-natural-gas")

require("prototypes.buildings.pipes-overlay")
require("prototypes.buildings.electrolyser")
require("prototypes.buildings.air-filter")
require("prototypes.buildings.chemical-plant")
require("prototypes.buildings.advanced-chemical-plant")
require("prototypes.buildings.gas-refinery")
require("prototypes.buildings.advanced-gas-refinery")
require("prototypes.buildings.separator")
require("prototypes.buildings.oil-refinery")
require("prototypes.buildings.steam-cracker")
require("prototypes.buildings.flare-stack")
require("prototypes.buildings.electric-boiler")
require("prototypes.buildings.valves")
require("prototypes.buildings.storage-tanks")
--require("prototypes.buildings.fluid-splitter")

require("prototypes.items.petrochem-basics")
require("prototypes.items.petrochem-carbons")
require("prototypes.items.petrochem-chlorine")
require("prototypes.items.petrochem-nitrogen")
require("prototypes.items.petrochem-raws")
require("prototypes.items.petrochem-solids")
require("prototypes.items.petrochem-sulfur")

require("prototypes.recipes.petrochem-basics")
require("prototypes.recipes.petrochem-carbons")
require("prototypes.recipes.petrochem-nitrogen")
require("prototypes.recipes.petrochem-solids")
require("prototypes.recipes.petrochem-sodium")
require("prototypes.recipes.petrochem-sulfur")
require("prototypes.recipes.petrochem-chlorine")
require("prototypes.recipes.petrochem-entity")

require("prototypes.technology.petrochem-technology")

-- EXECUTE FUNCTIONS
angelsmods.functions.make_resource()
