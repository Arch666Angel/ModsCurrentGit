data:extend(
  {
    --ITEMS
    {
      type = "item",
      name = "solid-mud",
      icon = "__angelsrefining__/graphics/icons/solid-mud.png",
      icon_size = 32,
      subgroup = "water-salination",
      stack_size = 200
    },
    {
      type = "item",
      name = "solid-limestone",
      icon = "__angelsrefining__/graphics/icons/solid-limestone.png",
      icon_size = 32,
      subgroup = "water-salination",
      stack_size = 200
    },
    {
      type = "item",
      name = "solid-sand",
      icon = "__angelsrefining__/graphics/icons/solid-sand.png",
      icon_size = 32,
      subgroup = "water-salination",
      stack_size = 200
    },
    {
      type = "item",
      name = "solid-clay",
      icon = "__angelsrefining__/graphics/icons/solid-clay.png",
      icon_size = 32,
      subgroup = "water-salination",
      stack_size = 200
    },
    --SALTS
    {
      type = "item",
      name = "solid-salt",
      icon = "__angelsrefining__/graphics/icons/solid-salt.png",
      icon_size = 32,
      subgroup = "water-salination",
      stack_size = 200
    },
    {
      type = "item",
      name = "solid-lithium",
      icon = "__angelsrefining__/graphics/icons/solid-lithium.png",
      icon_size = 32,
      subgroup = "water-salination",
      stack_size = 200
    },
    --FLUIDS
    {
      type = "fluid",
      name = "water-saline",
      icon = "__angelsrefining__/graphics/icons/water-saline.png",
      icon_size = 32,
      subgroup = "fluids-refining",
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r = 0.9, g = 0.9, b = 1},
      flow_color = {r = 0.9, g = 0.9, b = 1},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    {
      type = "fluid",
      name = "water-purified",
      icon = "__angelsrefining__/graphics/icons/water-purified.png",
      icon_size = 32,
      subgroup = "fluids-refining",
      default_temperature = 25,
      heat_capacity = "0.2KJ",
      base_color = {r = 0.7, g = 0.7, b = 1},
      flow_color = {r = 0.7, g = 0.7, b = 1},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    {
      type = "fluid",
      name = "water-yellow-waste",
      icon = "__angelsrefining__/graphics/icons/water-yellow-waste.png",
      icon_size = 32,
      subgroup = "fluids-refining",
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r = 0.9, g = 0.9, b = 0.4},
      flow_color = {r = 0.9, g = 0.9, b = 0.4},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    {
      type = "fluid",
      name = "water-red-waste",
      icon = "__angelsrefining__/graphics/icons/water-red-waste.png",
      icon_size = 32,
      subgroup = "fluids-refining",
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r = 0.9, g = 0.4, b = 0.4},
      flow_color = {r = 0.9, g = 0.4, b = 0.4},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    {
      type = "fluid",
      name = "water-green-waste",
      icon = "__angelsrefining__/graphics/icons/water-green-waste.png",
      icon_size = 32,
      subgroup = "fluids-refining",
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r = 0.4, g = 0.9, b = 0.4},
      flow_color = {r = 0.4, g = 0.9, b = 0.4},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    {
      type = "fluid",
      name = "water-greenyellow-waste",
      icon = "__angelsrefining__/graphics/icons/water-greenyellow-waste.png",
      icon_size = 32,
      subgroup = "fluids-refining",
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r = 0.9, g = 0.9, b = 0.4},
      flow_color = {r = 0.9, g = 0.9, b = 0.4},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    {
      type = "fluid",
      name = "water-mineralized",
      icon = "__angelsrefining__/graphics/icons/water-mineralized.png",
      icon_size = 32,
      subgroup = "fluids-refining",
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r = 0.7, g = 0.7, b = 0.6},
      flow_color = {r = 0.7, g = 0.7, b = 0.6},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    --WASHING
    {
      type = "fluid",
      name = "water-viscous-mud",
      icon = "__angelsrefining__/graphics/icons/water-viscous-mud.png",
      icon_size = 32,
      subgroup = "fluids-refining",
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r = 0.7, g = 0.7, b = 0.6},
      flow_color = {r = 0.7, g = 0.7, b = 0.6},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    {
      type = "fluid",
      name = "water-heavy-mud",
      icon = "__angelsrefining__/graphics/icons/water-heavy-mud.png",
      icon_size = 32,
      subgroup = "fluids-refining",
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r = 0.7, g = 0.7, b = 0.6},
      flow_color = {r = 0.7, g = 0.7, b = 0.6},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    {
      type = "fluid",
      name = "water-concentrated-mud",
      icon = "__angelsrefining__/graphics/icons/water-concentrated-mud.png",
      icon_size = 32,
      subgroup = "fluids-refining",
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r = 0.7, g = 0.7, b = 0.6},
      flow_color = {r = 0.7, g = 0.7, b = 0.6},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    {
      type = "fluid",
      name = "water-light-mud",
      icon = "__angelsrefining__/graphics/icons/water-light-mud.png",
      icon_size = 32,
      subgroup = "fluids-refining",
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r = 0.7, g = 0.7, b = 0.6},
      flow_color = {r = 0.7, g = 0.7, b = 0.6},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    {
      type = "fluid",
      name = "water-thin-mud",
      icon = "__angelsrefining__/graphics/icons/water-thin-mud.png",
      icon_size = 32,
      subgroup = "fluids-refining",
      default_temperature = 25,
      heat_capacity = "0.1KJ",
      base_color = {r = 0.7, g = 0.7, b = 0.6},
      flow_color = {r = 0.7, g = 0.7, b = 0.6},
      max_temperature = 100,
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59
    },
    --VOID
    {
      type = "item",
      name = "water-void",
      icon = "__angelsrefining__/graphics/icons/clarifier.png",
      icon_size = 32,
      flags = {"hidden"},
      subgroup = "water-salination",
      stack_size = 200
    }
  }
)
