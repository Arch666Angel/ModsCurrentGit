data:extend(
{
  --RECIPE CATEGORY
  {
    type = "recipe-category",
    name = "bob-logistics",
  },
  --EQUIPMENT CATEGORY
  {
    type = "equipment-category",
    name = "angels-light-attack"
  },
  {
    type = "equipment-category",
    name = "angels-heavy-attack"
  },
  {
    type = "equipment-category",
    name = "angels-repair"
  },
  {
    type = "equipment-category",
    name = "angels-light-defense"
  },
  {
    type = "equipment-category",
    name = "angels-heavy-defense"
  },
  {
    type = "equipment-category",
    name = "angels-energy"
  },
  {
    type = "equipment-category",
    name = "angels-construction"
  },
  {
    type = "equipment-category",
    name = "angels-movement"
  },
  --SUBGROUPS
  -- COMPONENTS
  {
    type = "item-group",
    name = "angels-components",
    order = "la[angels]-e[industries]-aa",
    inventory_order = "la[angels]-e[industries]-a",
    icons = {
      {
        icon = "__base__/graphics/item-group/intermediate-products.png",
        icon_size = 64,
      },
      {
        icon = "__angelsrefining__/graphics/icons/void.png",
        icon_size = 32,
        scale = 64 / 32 * 0.35,
        shift = {20, -20}
      }
    }
  },
  {
    type = "item-subgroup",
    name = "angels-basic-intermediate", -- like what doesn't fit in other groups
    group = "angels-components",
    order = "a[basic]-a",
  },
  {
    type = "item-subgroup",
    name = "angels-board",
    group = "angels-components",
    order = "b[electronics]-a[basic-board]",
  },
  {
    type = "item-subgroup",
    name = "angels-circuit-board",
    group = "angels-components",
    order = "b[electronics]-b[circuit-board]",
  },
  {
    type = "item-subgroup",
    name = "angels-loaded-circuit-board",
    group = "angels-components",
    order = "b[electronics]-c[loaded-circuit-board]",
  },
  {
    type = "item-subgroup",
    name = "angels-circuit-components",
    group = "angels-components",
    order = "b[electronics]-d[circuit-components]",
  },
  {
    type = "item-subgroup",
    name = "angels-motor-casing",
    group = "angels-components",
    order = "c[mechanics]-a[motor-casing]",
  },
  {
    type = "item-subgroup",
    name = "angels-motor-block",
    group = "angels-components",
    order = "c[mechanics]-b[motor-block]",
  },
  {
    type = "item-subgroup",
    name = "angels-motors",
    group = "angels-components",
    order = "c[mechanics]-c[motor-assembled]",
  },
  {
    type = "item-subgroup",
    name = "angels-mechanical-parts",
    group = "angels-components",
    order = "c[mechanics]-d[parts]",
  },
  {
    type = "item-subgroup",
    name = "angels-construction-grates",
    group = "angels-components",
    order = "d[constructions]-a[grates]",
  },
  {
    type = "item-subgroup",
    name = "angels-construction-frames",
    group = "angels-components",
    order = "d[constructions]-b[frames]",
  },
  {
    type = "item-subgroup",
    name = "angels-construction-components",
    group = "angels-components",
    order = "e[constructions]-c[components]",
  },
  {
    type = "item-subgroup",
    name = "angels-weapons-body",
    group = "angels-components",
    order = "f[weapons]-a[body]",
  },
  {
    type = "item-subgroup",
    name = "angels-weapons",
    group = "angels-components",
    order = "f[weapons]-b[weapon]",
  },
  {
    type = "item-subgroup",
    name = "angels-weapons-parts",
    group = "angels-components",
    order = "f[weapons]-c[parts]",
  },
  {
    type = "item-subgroup",
    name = "angels-cable-harness",
    group = "angels-components",
    order = "g[cables]",
  },
  {
    type = "item-subgroup",
    name = "angels-tool",
    group = "angels-components",
    order = "h[tools]",
  },
  {
    type = "item-group",
    name = "angels-blocks",
    order = "la[angels]-e[industries]-ab",
    inventory_order = "la[angels]-e[industries]-ab",
    icon_size = 64,
    icon = "__angelsindustries__/graphics/item-group/components-tech.png",
  },
  {
    type = "item-subgroup",
    name = "blocks-frames",
    group = "angels-blocks",
    order = "u[blocks]-aa[frame]",
  },
  {
    type = "item-subgroup",
    name = "blocks-electronics",
    group = "angels-blocks",
    order = "u[blocks]-ab[electronics]",
  },
  {
    type = "item-subgroup",
    name = "blocks-basic",
    group = "angels-blocks",
    order = "u[blocks]-ac[basic]",
  },
  {
    type = "item-subgroup",
    name = "blocks-enhancement",
    group = "angels-blocks",
    order = "u[blocks]-ba[enhancement]",
  },
  {
    type = "item-subgroup",
    name = "blocks-energy",
    group = "angels-blocks",
    order = "u[blocks]-bb[energy]",
  },
  {
    type = "item-subgroup",
    name = "blocks-exploration",
    group = "angels-blocks",
    order = "u[blocks]-bc[exploration]",
  },
  {
    type = "item-subgroup",
    name = "blocks-logistic",
    group = "angels-blocks",
    order = "u[blocks]-bd[logistic]",
  },
  {
    type = "item-subgroup",
    name = "blocks-production",
    group = "angels-blocks",
    order = "u[blocks]-be[production]",
  },
  {
    type = "item-subgroup",
    name = "blocks-processing",
    group = "angels-blocks",
    order = "u[blocks]-bf[processing]",
  },
  {
    type = "item-subgroup",
    name = "blocks-warfare",
    group = "angels-blocks",
    order = "u[blocks]-bg[warfare]",
  },
  {
    type = "item-subgroup",
    name = "angels-assemblers-small",
    group = "production",
    order = "z[assemblers]-a[small]",
  },
  {
    type = "item-subgroup",
    name = "angels-assemblers-medium",
    group = "production",
    order = "z[assemblers]-b[medium]",
  },
  {
    type = "item-subgroup",
    name = "angels-assemblers-big",
    group = "production",
    order = "z[assemblers]-c[big]",
  },
  -- SCIENCE
  {
    type = "item-group",
    name = "angels-tech",
    order = "la[angels]-e[industries]-b",
    inventory_order = "la[angels]-e[industries]-b",
    icon_size = 64,
    icon = "__angelsindustries__/graphics/item-group/science-group.png",
  },
  {
    type = "item-subgroup",
    name = "angels-science-pack",
    group = "angels-tech",
    order = "aa",
  },
  {
    type = "item-subgroup",
    name = "angels-pack-components",
    group = "angels-tech",
    order = "ab",
  },
  {
    type = "item-subgroup",
    name = "angels-datacore-1",
    group = "angels-tech",
    order = "b",
  },
  {
    type = "item-subgroup",
    name = "angels-datacore-2",
    group = "angels-tech",
    order = "c",
  },
  {
    type = "item-subgroup",
    name = "angels-labs-1",
    group = "angels-tech",
    order = "y",
  },
  {
    type = "item-subgroup",
    name = "angels-labs-2",
    group = "angels-tech",
    order = "z",
  },
  -- EQUIPMENT
  --{
  --  type = "item-group",
  --  name = "angels-enhancement",
  --  order = "la[angels]-e[industries]-c",
  --  inventory_order = "la[angels]-e[industries]-c",
  --  icon_size = 64,
  --  icon = "__angelsindustries__/graphics/item-group/vequip.png",
  --},
  --{
  --  type = "item-subgroup",
  --  name = "angels-equipment-energy",
  --  group = "angels-enhancement",
  --  order = "a",
  --},
  --{
  --  type = "item-subgroup",
  --  name = "angels-equipment-movement",
  --  group = "angels-enhancement",
  --  order = "b",
  --},
  --{
  --  type = "item-subgroup",
  --  name = "angels-equipment-robo",
  --  group = "angels-enhancement",
  --  order = "c",
  --},
  --{
  --  type = "item-subgroup",
  --  name = "angels-equipment-ldef",
  --  group = "angels-enhancement",
  --  order = "d",
  --},
  --{
  --  type = "item-subgroup",
  --  name = "angels-equipment-hdef",
  --  group = "angels-enhancement",
  --  order = "e",
  --},
  --{
  --  type = "item-subgroup",
  --  name = "angels-equipment-lat",
  --  group = "angels-enhancement",
  --  order = "f",
  --},
  --{
  --  type = "item-subgroup",
  --  name = "angels-equipment-hat",
  --  group = "angels-enhancement",
  --  order = "g",
  --},
  -- POWER
  {
    type = "item-group",
    name = "angels-power",
    order = "la[angels]-e[industries]-c",
    inventory_order = "la[angels]-e[industries]-c",
    icons = {
      {
        icon = "__angelsindustries__/graphics/technology/vequip.png",
        icon_size = 128,
        scale = 0.5,
      },
      {
        icon = "__angelsrefining__/graphics/icons/void.png",
        icon_size = 32,
        scale = 64 / 32 * 0.35,
        shift = {20, -20}
      }
    }
  },
  {
    type = "item-subgroup",
    name = "angels-power-steam",
    group = "angels-power",
    order = "a[steam]-a",
  },
  {
    type = "item-subgroup",
    name = "angels-power-solar",
    group = "angels-power",
    order = "b[solar]-a",
  },
  {
    type = "item-subgroup",
    name = "angels-power-nuclear",
    group = "angels-power",
    order = "c[nuclear]-a",
  },
  {
    type = "item-subgroup",
    name = "angels-power-nuclear-processing",
    group = "angels-power",
    order = "d[nuclear-processing]-a",
  },
  {
    type = "item-subgroup",
    name = "angels-power-poles",
    group = "angels-power",
    order = "e[power-poles]-a",
  },
  -- LOGISTICS
  {
    type = "item-group",
    name = "angels-logistics",
    order = "la[angels]-e[industries]-d",
    inventory_order = "la[angels]-e[industries]-d",
    --icon = "__angelsindustries__/graphics/item-group/cargo-roboport-group.png",
    --icon_size = 64,
    icons = {
      {
        icon = "__angelsindustries__/graphics/technology/cargo-roboport-tech.png",
        icon_size = 128,
        scale = 0.5
      },
      {
        icon = "__angelsrefining__/graphics/icons/void.png",
        icon_size = 32,
        scale = 64 / 32 * 0.35,
        shift = {20, -20}
      }
    }
  },
  {
    type = "item-subgroup",
    name = "angels-chests-big",
    group = "angels-logistics",
    order = "ab[chests-big]",
  },
  {
    type = "item-subgroup",
    name = "angels-cargo-ports",
    group = "angels-logistics",
    order = "bb[carbo-port]-a",
  },
  {
    type = "item-subgroup",
    name = "angels-cargo-expander",
    group = "angels-logistics",
    order = "bb[carbo-port]-b",
  },
  {
    type = "item-subgroup",
    name = "angels-cargo-bots",
    group = "angels-logistics",
    order = "cb[bots]",
  },
  {
    type = "item-subgroup",
    name = "angels-vehicles",
    group = "angels-logistics",
    order = "e",
  },
  {
    type = "item-subgroup",
    name = "angels-crawler-train",
    group = "angels-logistics",
    order = "fa",
  },
  -- VEHICLES
  {
    type = "item-group",
    name = "angels-vehicles",
    order = "la[angels]-e[industries]-e",
    inventory_order = "la[angels]-e[industries]-e",
    icons = {
      {
        icon = "__angelsindustries__/graphics/technology/crawler-tech.png",
        icon_size = 128,
        scale = 0.5,
      },
      {
        icon = "__angelsrefining__/graphics/icons/void.png",
        icon_size = 32,
        scale = 64 / 32 * 0.35,
        shift = {20, -20}
      }
    }
  },
  {
    type = "item-subgroup",
    name = "angels-vehicle-car",
    group = "angels-vehicles",
    order = "a"
  },
  {
    type = "item-subgroup",
    name = "angels-vehicle-train-vanilla",
    group = "angels-vehicles",
    order = "ba[vanilla-train]"
  },
  {
    type = "item-subgroup",
    name = "angels-vehicle-train-crawler",
    group = "angels-vehicles",
    order = "bb[crawler-train]" -- order bc reserved for smeltingtrain (see addon data-update)
  },                            -- order bd reserved for petrotrain (see addon data-update)
  {
    type = "item-subgroup",
    name = "angels-vehicle-train-other",
    group = "angels-vehicles",
    order = "c"
  },
  {
    type = "item-subgroup",
    name = "angels-vehicle-equipment",
    group = "angels-vehicles",
    order = "db" -- order da reserved for CAB (see addon cab-category)
  },             -- order dc reserved for bobvehicleequipment (see override)
  -- WARFARE
  {
    type = "item-group",
    name = "angels-warfare",
    order = "la[angels]-f[warfare]-a",
    inventory_order = "la[angels]-f[warfare]-a",
    icons = {
      {
        icon = "__base__/graphics/item-group/military.png",
        icon_size = 64,
      },
      {
        icon = "__angelsrefining__/graphics/icons/void.png",
        icon_size = 32,
        scale = 64 / 32 * 0.35,
        shift = {20, -20}
      }
    }
  },
  {
    type = "item-subgroup",
    name = "angels-warfare-bullet-guns",
    group = "angels-warfare",
    order = "b[bullets]-a[guns]" -- "b[bullets]-b[projectile]" reserved for "angels-warfare-bullet-projectiles" (see exploration override)
  },                             -- "b[bullets]-c[bullet]" reserved for "angels-warfare-bullet" (see exploration override)
  {                              -- "b[bullets]-d[magazine]" reserved for "angels-warfare-bullet-magazine" (see exploration override)
    type = "item-subgroup",
    name = "angels-warfare-shotgun-guns",
    group = "angels-warfare",
    order = "c[shotgun]-a[guns]" -- "c[shotgun]-b[shells]" reserved for "angels-warfare-shotgun-shells" (see exploration override)
  },
  {
    type = "item-subgroup",
    name = "angels-warfare-rocket-guns",
    group = "angels-warfare",
    order = "d[rocket]-a[guns]" -- "d[rocket]-b[warhead]" reserved for "angels-warfare-rocket-warhead"
  },                            -- "d[rocket]-c[bob-rocket]" reserved for "angels-warfare-bob-rocket"
  {
    type = "item-subgroup",
    name = "angels-warfare-flamethrower-guns",
    group = "angels-warfare",
    order = "e[flamethrower]-a[guns]"
  },
  {
    type = "item-subgroup",
    name = "angels-warfare-laser-guns",
    group = "angels-warfare",
    order = "f[laser]-a[guns]" -- "f[laser-rifle]-b[battery]" reserved for "angels-warfare-laser-battery"
  },
  {
    type = "item-subgroup",
    name = "angels-warfare-tank-guns",
    group = "angels-warfare",
    order = "g[tank]-a[guns]"
  },
  {
    type = "item-subgroup",
    name = "angels-warfare-artillery-guns",
    group = "angels-warfare",
    order = "h[artillery]-a[guns]"
  },
  {
    type = "item-subgroup",
    name = "angels-warfare-capsules-manual",
    group = "angels-warfare",
    order = "i[capsules]-a[manual]"
  },
  {
    type = "item-subgroup",
    name = "angels-warfare-wall",
    group = "angels-warfare",
    order = "j[wall]"
  },
}
)
