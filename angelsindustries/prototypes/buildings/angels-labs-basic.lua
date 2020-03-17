data:extend(
{
  --BASIC LABs
  {
    type = "item",
    name = "angels-basic-lab",
    icon = "__angelsindustries__/graphics/icons/basic-lab-ico.png",
    icon_size = 32,
    subgroup = "angels-labs-1",
    order = "g[angels-basic-lab]",
    place_result = "angels-basic-lab",
    stack_size = 10
  },
  {
    type = "lab",
    name = "angels-basic-lab",
    icon = "__angelsindustries__/graphics/icons/basic-lab-ico.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "angels-basic-lab"},
    max_health = 150,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    light = {intensity = 0.75, size = 8},
    on_animation = {
      filename = "__angelsindustries__/graphics/entity/basic-lab/basic-lab.png",
      width = 160,
      height = 160,
      frame_count = 36,
      line_length = 6,
      animation_speed = 0.5,
      shift = {0, 0}
    },
    off_animation = {
      filename = "__angelsindustries__/graphics/entity/basic-lab/basic-lab-off.png",
      width = 160,
      height = 160,
      frame_count = 1,
      shift = {0, 0}
    },
    working_sound = {
      sound = {
        filename = "__base__/sound/lab.ogg",
        volume = 0.7
      },
      apparent_volume = 1
    },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "100kW",
    researching_speed = 1.5,
    inputs = {
      "angels-science-pack-grey",
      "datacore-basic"
    },
    module_specification = {
      module_slots = 2,
      max_entity_info_module_icons_per_row = 3,
      max_entity_info_module_icon_rows = 1,
      module_info_icon_shift = {0, 0.9}
    }
  },
  {
    type = "item",
    name = "angels-basic-lab-2",
    icon = "__angelsindustries__/graphics/icons/basic-lab-ico.png",
    icon_size = 32,
    subgroup = "angels-labs-2",
    order = "g[angels-basic-lab]",
    place_result = "angels-basic-lab-2",
    stack_size = 10
  },
  {
    type = "lab",
    name = "angels-basic-lab-2",
    icon = "__angelsindustries__/graphics/icons/basic-lab-ico.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "angels-basic-lab-2"},
    max_health = 150,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    light = {intensity = 0.75, size = 8},
    on_animation = {
      filename = "__angelsindustries__/graphics/entity/basic-lab/basic-lab.png",
      width = 160,
      height = 160,
      frame_count = 36,
      line_length = 6,
      animation_speed = 0.5,
      shift = {0, 0}
    },
    off_animation = {
      filename = "__angelsindustries__/graphics/entity/basic-lab/basic-lab-off.png",
      width = 160,
      height = 160,
      frame_count = 1,
      shift = {0, 0}
    },
    working_sound = {
      sound = {
        filename = "__base__/sound/lab.ogg",
        volume = 0.7
      },
      apparent_volume = 1
    },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "150kW",
    researching_speed = 1.5,
    inputs = {
      "angels-science-pack-red",
      "angels-science-pack-green",
      "angels-science-pack-orange",
      "angels-science-pack-blue",
      "angels-science-pack-yellow",
      "datacore-basic"
    },
    module_specification = {
      module_slots = 2,
      max_entity_info_module_icons_per_row = 3,
      max_entity_info_module_icon_rows = 1,
      module_info_icon_shift = {0, 0.9}
    }
  },
  {
    type = "item",
    name = "angels-basic-lab-3",
    icon = "__angelsindustries__/graphics/icons/basic-lab-ico.png",
    icon_size = 32,
    subgroup = "angels-labs-3",
    order = "g[angels-basic-lab]",
    place_result = "angels-basic-lab-3",
    stack_size = 10
  },
  {
    type = "lab",
    name = "angels-basic-lab-3",
    icon = "__angelsindustries__/graphics/icons/basic-lab-ico.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "angels-basic-lab-3"},
    max_health = 150,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    light = {intensity = 0.75, size = 8},
    on_animation = {
      filename = "__angelsindustries__/graphics/entity/basic-lab/basic-lab.png",
      width = 160,
      height = 160,
      frame_count = 36,
      line_length = 6,
      animation_speed = 0.5,
      shift = {0, 0}
    },
    off_animation = {
      filename = "__angelsindustries__/graphics/entity/basic-lab/basic-lab-off.png",
      width = 160,
      height = 160,
      frame_count = 1,
      shift = {0, 0}
    },
    working_sound = {
      sound = {
        filename = "__base__/sound/lab.ogg",
        volume = 0.7
      },
      apparent_volume = 1
    },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "200kW",
    researching_speed = 1.75,
    inputs = {
      "angels-science-pack-yellow",
      "space-science-pack",
      "datacore-basic"
    },
    module_specification = {
      module_slots = 3,
      max_entity_info_module_icons_per_row = 3,
      max_entity_info_module_icon_rows = 1,
      module_info_icon_shift = {0, 0.9}
    }
  }
}
)

angelsmods.triggers.lab_ignore_token["angels-basic-lab"] = true
angelsmods.triggers.lab_ignore_token["angels-basic-lab-2"] = true
angelsmods.triggers.lab_ignore_token["angels-basic-lab-3"] = true
