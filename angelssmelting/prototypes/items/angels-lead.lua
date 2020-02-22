data:extend(
{
  -- ORE
  {
    type = "item",
    name = "lead-ore",
    icon = "__angelssmelting__/graphics/icons/ore-lead.png",
    icon_size = 32,
    subgroup = "angels-lead",
    order = "a",
    stack_size = 200
  },
  -- SMELTING INTERMEDIATE
  {
    type = "item",
    name = "processed-lead",
    icon = "__angelssmelting__/graphics/icons/processed-lead.png",
    icon_size = 32,
    subgroup = "angels-lead",
    order = "b",
    stack_size = 200
  },
  {
    type = "item",
    name = "pellet-lead",
    icon = "__angelssmelting__/graphics/icons/pellet-lead.png",
    icon_size = 32,
    subgroup = "angels-lead",
    order = "c",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-lead-oxide",
    icon = "__angelssmelting__/graphics/icons/solid-lead-oxide.png",
    icon_size = 32,
    subgroup = "angels-lead",
    order = "d",
    stack_size = 200
  },
  {
    type = "item",
    name = "anode-lead",
    icon = "__angelssmelting__/graphics/icons/anode-lead.png",
    icon_size = 32,
    subgroup = "angels-lead",
    order = "e",
    stack_size = 200
  },
  {
    type = "fluid",
    name = "liquid-hexafluorosilicic-acid",
    icon = "__angelssmelting__/graphics/icons/liquid-hexafluorosilicic-acid.png",
    icon_size = 32,
    subgroup = "angels-lead",
    order = "f",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r = 209/255, g = 209/255, b = 209/255},
    flow_color = {r = 209/255, g = 209/255, b = 209/255},
    max_temperature = 100,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  -- SMELTING RESULTS
  {
    type = "item",
    name = "ingot-lead",
    icon = "__angelssmelting__/graphics/icons/ingot-lead.png",
    icon_size = 32,
    subgroup = "angels-lead",
    order = "g",
    stack_size = 200
  },
  {
    type = "item",
    name = "powder-lead",
    icon = "__angelssmelting__/graphics/icons/powder-lead.png",
    icon_size = 32,
    subgroup = "angels-lead",
    order = "h",
    stack_size = 200
  },
  -- CASTING INTERMEDIATE
  {
    type = "fluid",
    name = "liquid-molten-lead",
    icon = "__angelssmelting__/graphics/icons/molten-lead.png",
    icon_size = 32,
    subgroup = "angels-lead-casting",
    order = "i",
    default_temperature = 100,
    heat_capacity = "0KJ",
    base_color = {r = 77/255, g = 78/255, b = 90/255},
    flow_color = {r = 77/255, g = 78/255, b = 90/255},
    max_temperature = 100,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    auto_barrel = false
  },
  {
    type = "item",
    name = "angels-roll-lead",
    icon = "__angelssmelting__/graphics/icons/roll-lead.png",
    icon_size = 32,
    subgroup = "angels-lead-casting",
    order = "j",
    stack_size = 200
  },
  -- CASTING RESULT
  {
    type = "item",
    name = "angels-plate-lead",
    icon = "__angelssmelting__/graphics/icons/plate-lead.png",
    icon_size = 32,
    subgroup = "angels-lead-casting",
    order = "k",
    stack_size = 200
  },
}
)