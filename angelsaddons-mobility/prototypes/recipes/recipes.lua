local funcs = require("prototypes/train-functions")
local energyInterfaceName = "angels-cab-energy-interface%s"
--------------------------------------------------------------------------------------------------
-- CAB recipes -----------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
if angelsmods.addons.mobility.cab then
data:extend(
  {
    {
      type = "recipe",
      name = "angels-cab",
      energy_required = 10,
      enabled = false,
      ingredients = {
        {type = "item", name = "engine-unit", amount = 20},
        {type = "item", name = "steel-plate", amount = 75},
        {type = "item", name = "electronic-circuit", amount = 20},
        {type = "item", name = "iron-gear-wheel", amount = 25}
      },
      result = "angels-cab"
    },
    {
      type = "recipe",
      name = "angels-cab-deploy-charge",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {type = "item", name = "iron-plate", amount = 1},
        {type = "item", name = "steel-plate", amount = 1},
        {type = "item", name = "electronic-circuit", amount = 1},
        {type = "item", name = "iron-gear-wheel", amount = 1}
      },
      result = "angels-cab-deploy-charge"
    },
    {
      type = "recipe",
      name = "angels-cab-undeploy-charge",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {type = "item", name = "iron-plate", amount = 1},
        {type = "item", name = "steel-plate", amount = 1},
        {type = "item", name = "electronic-circuit", amount = 1},
        {type = "item", name = "iron-gear-wheel", amount = 1}
      },
      result = "angels-cab-undeploy-charge"
    },
    {
      type = "recipe",
      name = string.format(energyInterfaceName, "-mk1"),
      energy_required = 10,
      enabled = false,
      ingredients = {
        {type = "item", name = "medium-electric-pole", amount = 1},
        {type = "item", name = "red-wire", amount = 10},
        {type = "item", name = "green-wire", amount = 10},
        {type = "item", name = "electronic-circuit", amount = 20}
      },
      result = string.format(energyInterfaceName, "-mk1")
    }
    --[[{
      type = "recipe",
      name = string.format(energyInterfaceName, "-mk2"),
      energy_required = 10,
      enabled = false,
      ingredients ={
        {string.format(energyInterfaceName, "-mk1"), 10},
      },
      result = string.format(energyInterfaceName, "-mk2"),
    },]]
  }
)
end
--------------------------------------------------------------------------------------------------
-- TRAIN recipes ---------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
--== CRAWLER ==--
if angelsmods.addons.mobility.crawlertrain.enabled then
funcs.generate_train_recipe(
  {
    type = "recipe",
    name = "crawler-locomotive",
    energy_required = 10,
    enabled = false,
    ingredients = {
      {"locomotive", {1, 0, 0, 0, 0}},
      {"engine-unit", {25, "+5", 0, 0, 0}},
      {"electric-engine-unit", {0, 0, 40, 45, 50}},
      {"electronic-circuit", {20, 0, 0, 0, 0}},
      {"speed-module", {0, 2, 0, 0, 0}},
      {"speed-module-2", {0, 0, 2, 0, 0}},
      {"speed-module-3", {0, 0, 0, 2, 0}},
      {"rocket-control-unit", {0, 0, 0, 0, 2}},
      {"steel-plate", {40, "+10", 0, 0, 0}},
      {"low-density-structure", {0, 0, 50, "+25", "+25"}}
    },
    result = "crawler-locomotive"
  },
  "angels-crawler-train"
)

funcs.generate_train_recipe(
  {
    type = "recipe",
    name = "crawler-locomotive-wagon",
    energy_required = 10,
    enabled = false,
    ingredients = {
      {"locomotive", {1, 0, 0, 0, 0}},
      {"engine-unit", {25, "+5", 0, 0, 0}},
      {"electric-engine-unit", {0, 0, 40, 45, 50}},
      {"electronic-circuit", {15, 0, 0, 0, 0}},
      {"speed-module", {0, 1, 0, 0, 0}},
      {"speed-module-2", {0, 0, 1, 0, 0}},
      {"speed-module-3", {0, 0, 0, 1, 0}},
      {"effectivity-module", {0, 1, 0, 0, 0}},
      {"effectivity-module-2", {0, 0, 1, 0, 0}},
      {"effectivity-module-3", {0, 0, 0, 1, 0}},
      {"rocket-control-unit", {0, 0, 0, 0, 2}},
      {"steel-plate", {35, "+5", 0, 0, 0}},
      {"low-density-structure", {0, 0, 40, "+20", "+20"}}
    },
    result = "crawler-locomotive-wagon"
  },
  "angels-crawler-train"
)

funcs.generate_train_recipe(
  {
    type = "recipe",
    name = "crawler-wagon",
    energy_required = 10,
    enabled = false,
    ingredients = {
      {"cargo-wagon", {1, 0, 0, 0, 0}},
      {"electronic-circuit", {15, 0, 0, 0, 0}},
      {"effectivity-module", {0, 2, 0, 0, 0}},
      {"effectivity-module-2", {0, 0, 2, 0, 0}},
      {"effectivity-module-3", {0, 0, 0, 2, 0}},
      {"iron-gear-wheel", {25, 0, 0, 0, 0}},
      {"iron-chest", {0, 5, "+5", 0, 0}},
      {"steel-chest", {0, 0, 0, 5, "+5"}},
      {"steel-plate", {20, "+5", 0, 0, 0}},
      {"low-density-structure", {0, 0, 25, "+10", "+15"}}
    },
    result = "crawler-wagon"
  },
  "angels-crawler-train"
)

funcs.generate_train_recipe(
  {
    type = "recipe",
    name = "crawler-bot-wagon",
    energy_required = 10,
    enabled = false,
    ingredients = {
      {"cargo-wagon", {1, 0, 0, 0, 0}},
      {"electronic-circuit", {15, 0, 0, 0, 0}},
      {"effectivity-module", {0, 2, 0, 0, 0}},
      {"effectivity-module-2", {0, 0, 2, 0, 0}},
      {"effectivity-module-3", {0, 0, 0, 2, 0}},
      {"rocket-control-unit", {0, 0, 0, 0, 2}},
      {"iron-gear-wheel", {25, 0, 0, 0, 0}},
      {"iron-chest", {0, 5, 0, 0, 0}},
      {"steel-chest", {0, 0, 5, 0, 0}},
      {"logistic-chest-storage", {0, 0, 0, 5, 0}},
      {"logistic-chest-buffer", {0, 0, 0, 0, 5}},
      {"steel-plate", {20, "+5", 0, 0, 0}},
      {"low-density-structure", {0, 0, 25, "+10", "+15"}}
    },
    result = "crawler-bot-wagon"
  },
  "angels-crawler-train"
)
end
if angelsmods.addons.mobility.petrotrain.enabled then
--== PETRO ==--
funcs.generate_train_recipe(
  {
    type = "recipe",
    name = "petro-locomotive-1",
    energy_required = 10,
    enabled = false,
    ingredients = {
      {"locomotive", {1, 0, 0, 0, 0}},
      {"engine-unit", {25, "+5", 0, 0, 0}},
      {"electric-engine-unit", {0, 0, 40, 45, 50}},
      {"electronic-circuit", {20, 0, 0, 0, 0}},
      {"speed-module", {0, 2, 0, 0, 0}},
      {"speed-module-2", {0, 0, 2, 0, 0}},
      {"speed-module-3", {0, 0, 0, 2, 0}},
      {"rocket-control-unit", {0, 0, 0, 0, 2}},
      {"steel-plate", {40, "+10", 0, 0, 0}},
      {"low-density-structure", {0, 0, 50, "+25", "+25"}}
    },
    result = "petro-locomotive-1"
  },
  "angels-petro-train"
)

funcs.generate_train_recipe(
  {
    type = "recipe",
    name = "petro-tank1",
    energy_required = 10,
    enabled = false,
    ingredients = {
      {"fluid-wagon", {1, 0, 0, 0, 0}},
      {"electronic-circuit", {15, 0, 0, 0, 0}},
      {"effectivity-module", {0, 2, 0, 0, 0}},
      {"effectivity-module-2", {0, 0, 2, 0, 0}},
      {"effectivity-module-3", {0, 0, 0, 2, "+0"}},
      {"pipe", {25, 0, 0, 0, 0}},
      {"storage-tank", {0, 3, "+3", "+3", "+3"}},
      {"steel-plate", {20, "+5", 0, 0, 0}},
      {"low-density-structure", {0, 0, 25, "+10", "+15"}}
    },
    result = "petro-tank1"
  },
  "angels-petro-train"
)

funcs.generate_train_recipe(
  {
    type = "recipe",
    name = "petro-tank2",
    energy_required = 10,
    enabled = false,
    ingredients = {
      {"fluid-wagon", {1, 0, 0, 0, 0}},
      {"electronic-circuit", {15, 0, 0, 0, 0}},
      {"effectivity-module", {0, 2, 0, 0, 0}},
      {"effectivity-module-2", {0, 0, 2, 0, 0}},
      {"effectivity-module-3", {0, 0, 0, 2, "+0"}},
      {"pipe", {25, 0, 0, 0, 0}},
      {"storage-tank", {0, 3, "+3", "+3", "+3"}},
      {"steel-plate", {20, "+5", 0, 0, 0}},
      {"low-density-structure", {0, 0, 25, "+10", "+15"}}
    },
    result = "petro-tank2"
  },
  "angels-petro-train"
)
end
if angelsmods.addons.mobility.smeltingtrain.enabled then
--== Smelting ==--
funcs.generate_train_recipe(
  {
    type = "recipe",
    name = "smelting-locomotive-1",
    energy_required = 10,
    enabled = false,
    ingredients = {
      {"locomotive", {1, 0, 0, 0, 0}},
      {"engine-unit", {25, "+5", 0, 0, 0}},
      {"electric-engine-unit", {0, 0, 40, 45, 50}},
      {"electronic-circuit", {20, 0, 0, 0, 0}},
      {"speed-module", {0, 2, 0, 0, 0}},
      {"speed-module-2", {0, 0, 2, 0, 0}},
      {"speed-module-3", {0, 0, 0, 2, 0}},
      {"rocket-control-unit", {0, 0, 0, 0, 2}},
      {"steel-plate", {40, "+10", 0, 0, 0}},
      {"low-density-structure", {0, 0, 50, "+25", "+25"}}
    },
    result = "smelting-locomotive-1"
  },
  "angels-smelting-train"
)

funcs.generate_train_recipe(
  {
    type = "recipe",
    name = "smelting-locomotive-tender",
    energy_required = 10,
    enabled = false,
    ingredients = {
      {"locomotive", {1, 0, 0, 0, 0}},
      {"engine-unit", {25, "+5", 0, 0, 0}},
      {"electric-engine-unit", {0, 0, 40, 45, 50}},
      {"electronic-circuit", {15, 0, 0, 0, 0}},
      {"speed-module", {0, 1, 0, 0, 0}},
      {"speed-module-2", {0, 0, 1, 0, 0}},
      {"speed-module-3", {0, 0, 0, 1, 0}},
      {"effectivity-module", {0, 1, 0, 0, 0}},
      {"effectivity-module-2", {0, 0, 1, 0, 0}},
      {"effectivity-module-3", {0, 0, 0, 1, 0}},
      {"rocket-control-unit", {0, 0, 0, 0, 2}},
      {"steel-plate", {35, "+5", 0, 0, 0}},
      {"low-density-structure", {0, 0, 40, "+20", "+20"}}
    },
    result = "smelting-locomotive-tender"
  },
  "angels-smelting-train"
)

funcs.generate_train_recipe(
  {
    type = "recipe",
    name = "smelting-wagon-1",
    energy_required = 10,
    enabled = false,
    ingredients = {
      {"cargo-wagon", {1, 0, 0, 0, 0}},
      {"electronic-circuit", {15, 0, 0, 0, 0}},
      {"effectivity-module", {0, 2, 0, 0, 0}},
      {"effectivity-module-2", {0, 0, 2, 0, 0}},
      {"effectivity-module-3", {0, 0, 0, 2, "+0"}},
      {"iron-gear-wheel", {25, 0, 0, 0, 0}},
      {"iron-chest", {0, 5, "+5", 0, 0}},
      {"steel-chest", {0, 0, 0, 5, "+5"}},
      {"steel-plate", {20, "+5", 0, 0, 0}},
      {"low-density-structure", {0, 0, 25, "+10", "+15"}}
    },
    result = "smelting-wagon-1"
  },
  "angels-smelting-train"
)
end