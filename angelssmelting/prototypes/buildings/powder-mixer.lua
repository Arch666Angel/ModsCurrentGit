data:extend(
  {
    {
      type = "item",
      name = "powder-mixer",
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/powder-mixer-ico.png",
          icon_size = 64
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_1.png",
          icon_size = 32,
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      subgroup = "angels-powder-mixer",
      order = "a[powder-mixer]",
      place_result = "powder-mixer",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "powder-mixer",
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/powder-mixer-ico.png",
          icon_size = 64
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_1.png",
          icon_size = 32,
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "powder-mixer"},
      fast_replaceable_group = "powder-mixer",
      next_upgrade = "powder-mixer-2",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
      selection_box = {{-1, -1}, {1, 1}},
      drawing_box = {{-1, -1.55}, {1, 1}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"powder-mixing"},
      crafting_speed = 1,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.03 * 60
      },
      energy_usage = "100kW",
      ingredient_count = 2,
      animation = {
        layers = {
          {
            filename = "__angelssmelting__/graphics/entity/powder-mixer/powder-mixer-base.png",
            priority = "high",
            width = 71,
            height = 87,
            line_length = 4,
            frame_count = 4,
            animation_speed = 0.5,
            shift = util.by_pixel(0, -10),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/powder-mixer/hr-powder-mixer-base.png",
              priority = "high",
              width = 138,
              height = 170,
              line_length = 4,
              frame_count = 4,
              animation_speed = 0.5,
              shift = util.by_pixel(0.5, -9.5),
              scale = 0.5,
            } or nil
          },
          {
            filename = "__angelssmelting__/graphics/entity/powder-mixer/powder-mixer-shadow.png",
            priority = "high",
            width = 93,
            height = 51,
            repeat_count = 4,
            animation_speed = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(13.5, 9.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/powder-mixer/hr-powder-mixer-shadow.png",
              priority = "high",
              width = 183,
              height = 99,
              repeat_count = 4,
              animation_speed = 0.5,
              draw_as_shadow = true,
              shift = util.by_pixel(13, 9),
              scale = 0.5,
            } or nil
          }
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelssmelting__/sound/ore-processing-machine.ogg", volume = 0.45},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      }
    },
    {
      type = "item",
      name = "powder-mixer-2",
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/powder-mixer-ico.png",
          icon_size = 64
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_2.png",
          icon_size = 32,
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      subgroup = "angels-powder-mixer",
      order = "b[powder-mixer-2]",
      place_result = "powder-mixer-2",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "powder-mixer-2",
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/powder-mixer-ico.png",
          icon_size = 64
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_2.png",
          icon_size = 32,
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "powder-mixer-2"},
      fast_replaceable_group = "powder-mixer",
      next_upgrade = "powder-mixer-3",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
      selection_box = {{-1, -1}, {1, 1}},
      drawing_box = {{-1, -1.55}, {1, 1}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"powder-mixing"},
      crafting_speed = 1.5,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.04 * 60
      },
      energy_usage = "125kW",
      ingredient_count = 4,
      animation = {
        layers = {
          {
            filename = "__angelssmelting__/graphics/entity/powder-mixer/powder-mixer-base.png",
            priority = "high",
            width = 71,
            height = 87,
            line_length = 4,
            frame_count = 4,
            animation_speed = 0.5,
            shift = util.by_pixel(0, -10),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/powder-mixer/hr-powder-mixer-base.png",
              priority = "high",
              width = 138,
              height = 170,
              line_length = 4,
              frame_count = 4,
              animation_speed = 0.5,
              shift = util.by_pixel(0.5, -9.5),
              scale = 0.5,
            } or nil
          },
          {
            filename = "__angelssmelting__/graphics/entity/powder-mixer/powder-mixer-shadow.png",
            priority = "high",
            width = 93,
            height = 51,
            repeat_count = 4,
            animation_speed = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(13.5, 9.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/powder-mixer/hr-powder-mixer-shadow.png",
              priority = "high",
              width = 183,
              height = 99,
              repeat_count = 4,
              animation_speed = 0.5,
              draw_as_shadow = true,
              shift = util.by_pixel(13, 9),
              scale = 0.5,
            } or nil
          }
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelssmelting__/sound/ore-processing-machine.ogg", volume = 0.45},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      }
    },
    {
      type = "item",
      name = "powder-mixer-3",
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/powder-mixer-ico.png",
          icon_size = 64
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_3.png",
          icon_size = 32,
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      subgroup = "angels-powder-mixer",
      order = "c[powder-mixer-3]",
      place_result = "powder-mixer-3",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "powder-mixer-3",
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/powder-mixer-ico.png",
          icon_size = 64
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_3.png",
          icon_size = 32,
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "powder-mixer-3"},
      fast_replaceable_group = "powder-mixer",
      next_upgrade = "powder-mixer-4",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
      selection_box = {{-1, -1}, {1, 1}},
      drawing_box = {{-1, -1.55}, {1, 1}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"powder-mixing"},
      crafting_speed = 2,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.05 * 60
      },
      energy_usage = "150kW",
      ingredient_count = 6,
      animation = {
        layers = {
          {
            filename = "__angelssmelting__/graphics/entity/powder-mixer/powder-mixer-base.png",
            priority = "high",
            width = 71,
            height = 87,
            line_length = 4,
            frame_count = 4,
            animation_speed = 0.5,
            shift = util.by_pixel(0, -10),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/powder-mixer/hr-powder-mixer-base.png",
              priority = "high",
              width = 138,
              height = 170,
              line_length = 4,
              frame_count = 4,
              animation_speed = 0.5,
              shift = util.by_pixel(0.5, -9.5),
              scale = 0.5,
            } or nil
          },
          {
            filename = "__angelssmelting__/graphics/entity/powder-mixer/powder-mixer-shadow.png",
            priority = "high",
            width = 93,
            height = 51,
            repeat_count = 4,
            animation_speed = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(13.5, 9.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/powder-mixer/hr-powder-mixer-shadow.png",
              priority = "high",
              width = 183,
              height = 99,
              repeat_count = 4,
              animation_speed = 0.5,
              draw_as_shadow = true,
              shift = util.by_pixel(13, 9),
              scale = 0.5,
            } or nil
          }
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelssmelting__/sound/ore-processing-machine.ogg", volume = 0.45},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      }
    },
    {
      type = "item",
      name = "powder-mixer-4",
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/powder-mixer-ico.png",
          icon_size = 64
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_4.png",
          icon_size = 32,
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      subgroup = "angels-powder-mixer",
      order = "d[powder-mixer-4]",
      place_result = "powder-mixer-4",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "powder-mixer-4",
      icons = {
        {
          icon = "__angelssmelting__/graphics/icons/powder-mixer-ico.png",
          icon_size = 64
        },
        {
          icon = "__angelsrefining__/graphics/icons/num_4.png",
          icon_size = 32,
          tint = angelsmods.smelting.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "powder-mixer-4"},
      fast_replaceable_group = "powder-mixer",
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
      selection_box = {{-1, -1}, {1, 1}},
      drawing_box = {{-1, -1.55}, {1, 1}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"},
      crafting_categories = {"powder-mixing"},
      crafting_speed = 3,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.06 * 60
      },
      energy_usage = "175kW",
      ingredient_count = 6,
      animation = {
        layers = {
          {
            filename = "__angelssmelting__/graphics/entity/powder-mixer/powder-mixer-base.png",
            priority = "high",
            width = 71,
            height = 87,
            line_length = 4,
            frame_count = 4,
            animation_speed = 0.5,
            shift = util.by_pixel(0, -10),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/powder-mixer/hr-powder-mixer-base.png",
              priority = "high",
              width = 138,
              height = 170,
              line_length = 4,
              frame_count = 4,
              animation_speed = 0.5,
              shift = util.by_pixel(0.5, -9.5),
              scale = 0.5,
            } or nil
          },
          {
            filename = "__angelssmelting__/graphics/entity/powder-mixer/powder-mixer-shadow.png",
            priority = "high",
            width = 93,
            height = 51,
            repeat_count = 4,
            animation_speed = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(13.5, 9.5),
            hr_version = angelsmods.trigger.enable_hq_graphics and {
              filename = "__angelssmelting__/graphics/entity/powder-mixer/hr-powder-mixer-shadow.png",
              priority = "high",
              width = 183,
              height = 99,
              repeat_count = 4,
              animation_speed = 0.5,
              draw_as_shadow = true,
              shift = util.by_pixel(13, 9),
              scale = 0.5,
            } or nil
          }
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelssmelting__/sound/ore-processing-machine.ogg", volume = 0.45},
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        audible_distance_modifier = 0.5,
        apparent_volume = 2.5
      }
    }
  }
)
