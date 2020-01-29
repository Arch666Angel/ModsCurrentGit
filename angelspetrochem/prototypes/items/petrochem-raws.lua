data:extend(
{
  --RAWS
  {
    type = "fluid",
    name = "gas-natural-1",
    icon = "__angelspetrochem__/graphics/icons/gas-natural-1.png",
    icon_size = 32,
    subgroup = "petrochem-raw-fluids",
    order = "aa",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r = 0.3, g = 0.45, b = 0.3},
    flow_color = {r = 0.3, g = 0.45, b = 0.3},
    max_temperature = 100,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  -- {
  -- type = "fluid",
  -- name = "gas-natural-2",
  -- icon = "__angelspetrochem__/graphics/icons/gas-natural-2.png",
  -- default_temperature = 25,
  -- heat_capacity = "1KJ",
  -- base_color = {r = 0.50, g = 0.70, b = 0.40},
  -- flow_color = {r = 0.50, g = 0.70, b = 0.40},
  -- max_temperature = 100,
  -- pressure_to_speed_ratio = 0.4,
  -- flow_to_energy_ratio = 0.59,
  -- },
  {
    type = "fluid",
    name = "liquid-multi-phase-oil",
    icon = "__angelspetrochem__/graphics/icons/liquid-multi-phase-oil.png",
    icon_size = 32,
    subgroup = "petrochem-raw-fluids",
    order = "ba", --bb=crude oil
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r = 0.3, g = 0.4, b = 0.3},
    flow_color = {r = 0.3, g = 0.4, b = 0.3},
    max_temperature = 100,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  {
    type = "fluid",
    name = "gas-raw-1",
    icon = "__angelspetrochem__/graphics/icons/gas-raw-1.png",
    icon_size = 32,
    subgroup = "petrochem-raw-fluids",
    order = "ab",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r = 0.2, g = 0.45, b = 0.2},
    flow_color = {r = 0.2, g = 0.45, b = 0.2},
    max_temperature = 100,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  -- {
  -- type = "fluid",
  -- name = "gas-raw-2",
  -- icon = "__angelspetrochem__/graphics/icons/gas-raw-1.png",
  -- default_temperature = 25,
  -- heat_capacity = "1KJ",
  -- base_color = {r = 0.70, g = 0.90, b = 0.60},
  -- flow_color = {r = 0.70, g = 0.90, b = 0.60},
  -- max_temperature = 100,
  -- pressure_to_speed_ratio = 0.4,
  -- flow_to_energy_ratio = 0.59,
  -- },
  {
    type = "fluid",
    name = "liquid-condensates",
    icon = "__angelspetrochem__/graphics/icons/liquid-condensates.png",
    icon_size = 32,
    subgroup = "petrochem-raw-fluids",
    order = "ca",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r = 0.5, g = 0.5, b = 0.5},
    flow_color = {r = 0.5, g = 0.5, b = 0.5},
    max_temperature = 100,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  {
    type = "fluid",
    name = "gas-acid",
    icon = "__angelspetrochem__/graphics/icons/gas-acid.png",
    icon_size = 32,
    subgroup = "petrochem-sulfer-fluids",
    order = "d",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r = 0.8, g = 0.8, b = 0},
    flow_color = {r = 0.8, g = 0.8, b = 0},
    max_temperature = 100,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  {
    type = "fluid",
    name = "liquid-ngl",
    icon = "__angelspetrochem__/graphics/icons/liquid-ngl.png",
    icon_size = 32,
    subgroup = "petrochem-raw-fluids",
    order = "ac",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r = 0.3, g = 0.5, b = 0.3},
    flow_color = {r = 0.3, g = 0.5, b = 0.3},
    max_temperature = 100,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  {
    type = "fluid",
    name = "gas-residual",
    icon = "__angelspetrochem__/graphics/icons/gas-residual.png",
    icon_size = 32,
    subgroup = "petrochem-raw-fluids",
    order = "cb",
    default_temperature = 25,
    heat_capacity = "0.1KJ",
    base_color = {r = 0.5, g = 0, b = 0.5},
    flow_color = {r = 0.5, g = 0, b = 0.5},
    max_temperature = 100,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
}
)
