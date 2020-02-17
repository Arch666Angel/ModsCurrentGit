data:extend({
  {
    type = "technology",
    name = "angels-nickel-smelting-1",
    icon = "__angelssmelting__/graphics/technology/smelting-nickel.png",
    icon_size = 128,
    prerequisites =
    {
      "angels-metallurgy-1",
      "angels-coal-processing",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "nickel-ore-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "molten-nickel-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-plate-nickel"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
      },
      time = 30
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "angels-nickel-smelting-2",
    icon = "__angelssmelting__/graphics/technology/smelting-nickel.png",
    icon_size = 128,
    upgrade = true,
    prerequisites =
    {
      "angels-nickel-smelting-1",
      "ore-processing-1",
      "angels-sulfur-processing-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "nickel-ore-processing"
      },
      {
        type = "unlock-recipe",
        recipe = "processed-nickel-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "cathode-nickel-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "powder-nickel"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
      time = 30
    },
    order = "c-a"
  },
  {
    type = "technology",
    name = "angels-nickel-smelting-3",
    icon = "__angelssmelting__/graphics/technology/smelting-nickel.png",
    icon_size = 128,
    upgrade = true,
    prerequisites =
    {
      "angels-nickel-smelting-2",
      "ore-processing-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "nickel-processed-processing"
      },
      {
        type = "unlock-recipe",
        recipe = "pellet-nickel-smelting"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-nickel-carbonyl-smelting"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
      },
      time = 30
    },
    order = "c-a"
  },
})