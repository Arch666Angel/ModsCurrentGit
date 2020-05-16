data:extend(
{
  {
    type = "fluid",
    name = "gas-puffer-atmosphere",
    icons = angelsmods.functions.create_gas_fluid_icon(nil, { {194,227,091}, {184,239,000}, {156,207,000} }),
    subgroup = "bio-puffer",
    order = "f",
    default_temperature = 25,
    max_temperature = 100,
    heat_capacity = "1KJ",
    base_color = {r=156/255, g=206/255, b=0/255},
    flow_color = {r=156/255, g=206/255, b=0/255},
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  {
    type = "item",
    name = "bio-puffer-egg-shell",
    icon = "__angelsbioprocessing__/graphics/icons/puffer-egg-shell.png",
    icon_size = 32,
    subgroup = "bio-puffer-egg",
    order = "fa",
    stack_size = 200,
  },
  {
    type = "item",
    name = "bio-puffer-egg-shell-powder",
    icon = "__angelsbioprocessing__/graphics/icons/puffer-egg-shell-powder.png",
    icon_size = 32,
    subgroup = "bio-puffer-egg",
    order = "fb",
    stack_size = 200,
  },



  -- PUFFERS
  {
    type = "item",
    name = "bio-puffer-1",
    icon = "__angelsbioprocessing__/graphics/icons/puffer-1-icon.png",
    icon_size = 32,
    subgroup = "bio-puffer",
    order = "a",
    stack_size = 200,
  },
  {
    type = "item",
    name = "bio-puffer-2",
    icon = "__angelsbioprocessing__/graphics/icons/puffer-2-icon.png",
    icon_size = 32,
    subgroup = "bio-puffer",
    order = "b",
    stack_size = 200,
  },
  {
    type = "item",
    name = "bio-puffer-3",
    icon = "__angelsbioprocessing__/graphics/icons/puffer-3-icon.png",
    icon_size = 32,
    subgroup = "bio-puffer",
    order = "c",
    stack_size = 200,
  },
  {
    type = "item",
    name = "bio-puffer-4",
    icon = "__angelsbioprocessing__/graphics/icons/puffer-4-icon.png",
    icon_size = 32,
    subgroup = "bio-puffer",
    order = "d",
    stack_size = 200,
  },
  {
    type = "item",
    name = "bio-puffer-5",
    icon = "__angelsbioprocessing__/graphics/icons/puffer-5-icon.png",
    icon_size = 32,
    subgroup = "bio-puffer",
    order = "e",
    stack_size = 200,
  },



  -- EGGS
  {
    type = "item",
    name = "bio-puffer-egg-1",
    icon = "__angelsbioprocessing__/graphics/icons/puffer-1-egg.png",
    icon_size = 32,
    subgroup = "bio-puffer-egg",
    order = "a",
    stack_size = 200,
  },
  {
    type = "item",
    name = "bio-puffer-egg-2",
    icon = "__angelsbioprocessing__/graphics/icons/puffer-2-egg.png",
    icon_size = 32,
    subgroup = "bio-puffer-egg",
    order = "b",
    stack_size = 200,
  },
  {
    type = "item",
    name = "bio-puffer-egg-3",
    icon = "__angelsbioprocessing__/graphics/icons/puffer-3-egg.png",
    icon_size = 32,
    subgroup = "bio-puffer-egg",
    order = "c",
    stack_size = 200,
  },
  {
    type = "item",
    name = "bio-puffer-egg-4",
    icon = "__angelsbioprocessing__/graphics/icons/puffer-4-egg.png",
    icon_size = 32,
    subgroup = "bio-puffer-egg",
    order = "d",
    stack_size = 200,
  },
  {
    type = "item",
    name = "bio-puffer-egg-5",
    icon = "__angelsbioprocessing__/graphics/icons/puffer-5-egg.png",
    icon_size = 32,
    subgroup = "bio-puffer-egg",
    order = "e",
    stack_size = 200,
  }
}
)
