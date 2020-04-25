data:extend(
  {
    -----------------------------------------------------------------------------
    -- BASIC LABS ---------------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "angels-basic-lab",
      energy_required = 5,
      enabled = true,
      ingredients = {
        {type = "item", name = "block-electronics-0", amount = 9}
      },
      result = "angels-basic-lab",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-basic-lab-2",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {type = "item", name = "block-construction-1", amount = 3},
        {type = "item", name = "block-exploration-1", amount = 1},
        {type = "item", name = "block-electronics-1", amount = 1},
        {type = "item", name = "block-energy-1", amount = 1},
        {type = "item", name = "block-logistic-1", amount = 1},
        {type = "item", name = "block-enhancement-1", amount = 1},
        {type = "item", name = "block-production-1", amount = 1},
        {type = "item", name = "block-warfare-1", amount = 1},
        {type = "item", name = "angels-basic-lab", amount = 1}
      },
      result = "angels-basic-lab-2",
      icon_size = 32,
      subgroup = "angels-labs-2",
      order = "g"
    },
    {
      type = "recipe",
      name = "angels-basic-lab-3",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {type = "item", name = "block-construction-4", amount = 3},
        {type = "item", name = "block-exploration-4", amount = 1},
        {type = "item", name = "block-electronics-4", amount = 1},
        {type = "item", name = "block-energy-4", amount = 1},
        {type = "item", name = "block-logistic-4", amount = 1},
        {type = "item", name = "block-enhancement-4", amount = 1},
        {type = "item", name = "block-production-4", amount = 1},
        {type = "item", name = "block-warfare-4", amount = 1},
        {type = "item", name = "angels-basic-lab-2", amount = 1}
      },
      result = "angels-basic-lab-3",
      icon_size = 32,
      subgroup = "angels-labs-3",
      order = "g"
    },
    -----------------------------------------------------------------------------
    -- EXPLORATION LABS ---------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "angels-exploration-lab-1",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {type = "item", name = "block-exploration-1", amount = 2},
        {type = "item", name = "block-electronics-1", amount = 4},
        {type = "item", name = "block-construction-1", amount = 4}
      },
      result = "angels-exploration-lab-1"
    },
    {
      type = "recipe",
      name = "angels-exploration-lab-2",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {type = "item", name = "block-exploration-4", amount = 1},
        {type = "item", name = "block-electronics-4", amount = 4},
        {type = "item", name = "block-construction-4", amount = 4},
        {type = "item", name = "angels-exploration-lab-1", amount = 1}
      },
      result = "angels-exploration-lab-2",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-exploration-lab-3",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {type = "item", name = "block-exploration-5", amount = 1},
        {type = "item", name = "block-electronics-5", amount = 4},
        {type = "item", name = "block-construction-5", amount = 4},
        {type = "item", name = "angels-exploration-lab-2", amount = 1}
      },
      result = "angels-exploration-lab-3",
      icon_size = 32
    },
    -----------------------------------------------------------------------------
    -- ENERGY LABS --------------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "angels-energy-lab-1",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {type = "item", name = "block-exploration-1", amount = 1},
        {type = "item", name = "block-energy-1", amount = 1},
        {type = "item", name = "block-electronics-1", amount = 4},
        {type = "item", name = "block-construction-1", amount = 4}
      },
      result = "angels-energy-lab-1",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-energy-lab-2",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {type = "item", name = "block-exploration-4", amount = 1},
        {type = "item", name = "block-energy-4", amount = 1},
        {type = "item", name = "block-electronics-4", amount = 4},
        {type = "item", name = "block-construction-4", amount = 4},
        {type = "item", name = "angels-energy-lab-1", amount = 1}
      },
      result = "angels-energy-lab-2",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-energy-lab-3",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {type = "item", name = "block-exploration-5", amount = 1},
        {type = "item", name = "block-energy-5", amount = 1},
        {type = "item", name = "block-electronics-5", amount = 4},
        {type = "item", name = "block-construction-5", amount = 4},
        {type = "item", name = "angels-energy-lab-2", amount = 1}
      },
      result = "angels-energy-lab-3",
      icon_size = 32
    },
    -----------------------------------------------------------------------------
    -- LOGISTIC LABS ------------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "angels-logistic-lab-1",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {type = "item", name = "block-exploration-1", amount = 1},
        {type = "item", name = "block-logistic-1", amount = 1},
        {type = "item", name = "block-electronics-1", amount = 4},
        {type = "item", name = "block-construction-1", amount = 4}
      },
      result = "angels-logistic-lab-1",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-logistic-lab-2",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {type = "item", name = "block-exploration-4", amount = 1},
        {type = "item", name = "block-logistic-4", amount = 1},
        {type = "item", name = "block-electronics-4", amount = 4},
        {type = "item", name = "block-construction-4", amount = 4},
        {type = "item", name = "angels-logistic-lab-1", amount = 1}
      },
      result = "angels-logistic-lab-2",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-logistic-lab-3",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {type = "item", name = "block-exploration-5", amount = 4},
        {type = "item", name = "block-logistic-5", amount = 4},
        {type = "item", name = "block-electronics-5", amount = 4},
        {type = "item", name = "block-construction-5", amount = 4},
        {type = "item", name = "angels-logistic-lab-2", amount = 1}
      },
      result = "angels-logistic-lab-3",
      icon_size = 32
    },
    -----------------------------------------------------------------------------
    -- ENCHANTMENT LABS ---------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "angels-enhance-lab-1",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {type = "item", name = "block-exploration-1", amount = 1},
        {type = "item", name = "block-enhancement-1", amount = 1},
        {type = "item", name = "block-electronics-1", amount = 4},
        {type = "item", name = "block-construction-1", amount = 4}
      },
      result = "angels-enhance-lab-1",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-enhance-lab-2",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {type = "item", name = "block-exploration-4", amount = 1},
        {type = "item", name = "block-enhancement-4", amount = 1},
        {type = "item", name = "block-electronics-4", amount = 4},
        {type = "item", name = "block-construction-4", amount = 4},
        {type = "item", name = "angels-enhance-lab-1", amount = 1}
      },
      result = "angels-enhance-lab-2",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-enhance-lab-3",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {type = "item", name = "block-exploration-5", amount = 1},
        {type = "item", name = "block-enhancement-5", amount = 1},
        {type = "item", name = "block-electronics-5", amount = 4},
        {type = "item", name = "block-construction-5", amount = 4},
        {type = "item", name = "angels-enhance-lab-2", amount = 1}
      },
      result = "angels-enhance-lab-3",
      icon_size = 32
    },
    -----------------------------------------------------------------------------
    -- PROCESISNG LABS ----------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "angels-processing-lab-1",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {type = "item", name = "block-exploration-1", amount = 1},
        {type = "item", name = "block-production-1", amount = 1},
        {type = "item", name = "block-electronics-1", amount = 4},
        {type = "item", name = "block-construction-1", amount = 4}
      },
      result = "angels-processing-lab-1",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-processing-lab-2",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {type = "item", name = "block-exploration-4", amount = 1},
        {type = "item", name = "block-production-4", amount = 1},
        {type = "item", name = "block-electronics-4", amount = 4},
        {type = "item", name = "block-construction-4", amount = 4},
        {type = "item", name = "angels-processing-lab-1", amount = 1}
      },
      result = "angels-processing-lab-2",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-processing-lab-3",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {type = "item", name = "block-exploration-5", amount = 4},
        {type = "item", name = "block-production-5", amount = 4},
        {type = "item", name = "block-electronics-5", amount = 4},
        {type = "item", name = "block-construction-5", amount = 4},
        {type = "item", name = "angels-processing-lab-2", amount = 1}
      },
      result = "angels-processing-lab-3",
      icon_size = 32
    },
    -----------------------------------------------------------------------------
    -- WARFARE LABS -------------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "angels-war-lab-1",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {type = "item", name = "block-exploration-1", amount = 1},
        {type = "item", name = "block-warfare-1", amount = 1},
        {type = "item", name = "block-electronics-1", amount = 4},
        {type = "item", name = "block-construction-1", amount = 4}
      },
      result = "angels-war-lab-1",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-war-lab-2",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {type = "item", name = "block-exploration-4", amount = 1},
        {type = "item", name = "block-warfare-4", amount = 1},
        {type = "item", name = "block-electronics-4", amount = 4},
        {type = "item", name = "block-construction-4", amount = 4},
        {type = "item", name = "angels-war-lab-1", amount = 1}
      },
      result = "angels-war-lab-2",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-war-lab-3",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {type = "item", name = "block-exploration-5", amount = 4},
        {type = "item", name = "block-warfare-5", amount = 4},
        {type = "item", name = "block-electronics-5", amount = 4},
        {type = "item", name = "block-construction-5", amount = 4},
        {type = "item", name = "angels-war-lab-2", amount = 1}
      },
      result = "angels-war-lab-3",
      icon_size = 32
    },
    -----------------------------------------------------------------------------
    -- MAIN LABS ----------------------------------------------------------------
    -----------------------------------------------------------------------------
    {
      type = "recipe",
      name = "angels-main-lab-2",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {type = "item", name = "angels-main-lab-1", amount = 1},
        {type = "item", name = "block-electronics-0", amount = 9},
        {type = "item", name = "block-construction-1", amount = 6}
      },
      result = "angels-main-lab-2",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-main-lab-3",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {type = "item", name = "angels-main-lab-2", amount = 1},
        {type = "item", name = "block-electronics-1", amount = 1},
        {type = "item", name = "block-exploration-1", amount = 1},
        {type = "item", name = "block-energy-1", amount = 1},
        {type = "item", name = "block-logistic-1", amount = 1},
        {type = "item", name = "block-enhancement-1", amount = 1},
        {type = "item", name = "block-production-1", amount = 1},
        {type = "item", name = "block-warfare-1", amount = 1}
      },
      result = "angels-main-lab-3",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-main-lab-4",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {type = "item", name = "angels-main-lab-3", amount = 1},
        {type = "item", name = "block-electronics-2", amount = 1},
        {type = "item", name = "block-exploration-2", amount = 1},
        {type = "item", name = "block-energy-2", amount = 1},
        {type = "item", name = "block-logistic-2", amount = 1},
        {type = "item", name = "block-enhancement-2", amount = 1},
        {type = "item", name = "block-production-2", amount = 1},
        {type = "item", name = "block-warfare-2", amount = 1}
      },
      result = "angels-main-lab-4",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-main-lab-5",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {type = "item", name = "angels-main-lab-4", amount = 1},
        {type = "item", name = "block-electronics-3", amount = 1},
        {type = "item", name = "block-exploration-3", amount = 1},
        {type = "item", name = "block-energy-3", amount = 1},
        {type = "item", name = "block-logistic-3", amount = 1},
        {type = "item", name = "block-enhancement-3", amount = 1},
        {type = "item", name = "block-production-3", amount = 1},
        {type = "item", name = "block-warfare-3", amount = 1}
      },
      result = "angels-main-lab-5",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-main-lab-6",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {type = "item", name = "angels-main-lab-5", amount = 1},
        {type = "item", name = "block-electronics-4", amount = 1},
        {type = "item", name = "block-exploration-4", amount = 1},
        {type = "item", name = "block-energy-4", amount = 1},
        {type = "item", name = "block-logistic-4", amount = 1},
        {type = "item", name = "block-enhancement-4", amount = 1},
        {type = "item", name = "block-production-4", amount = 1},
        {type = "item", name = "block-warfare-4", amount = 1}
      },
      result = "angels-main-lab-6",
      icon_size = 32
    },
    {
      type = "recipe",
      name = "angels-main-lab-7",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {type = "item", name = "angels-main-lab-6", amount = 1},
        {type = "item", name = "block-electronics-5", amount = 1},
        {type = "item", name = "block-exploration-5", amount = 1},
        {type = "item", name = "block-energy-5", amount = 1},
        {type = "item", name = "block-logistic-5", amount = 1},
        {type = "item", name = "block-enhancement-5", amount = 1},
        {type = "item", name = "block-production-5", amount = 1},
        {type = "item", name = "block-warfare-5", amount = 1}
      },
      result = "angels-main-lab-7",
      icon_size = 32
    }
  }
)
