data:extend(
  {
    --AMMO
    {
      type = "ammo-category",
      name = "cannon-turret"
    },
    {
      type = "ammo-category",
      name = "heavy-cannon-shell"
    },
    {
      type = "ammo-category",
      name = "bio"
    },
    --DAMAGE TYPE
    {
      type = "damage-type",
      name = "plasma"
    },
    {
      type = "damage-type",
      name = "bio"
    },
    --SUBGROUPS
    {
      type = "item-group",
      name = "angels-exploration",
      order = "la[angels]-f[exploration]-a", -- order la[angels]-f[exploration]-b reserved for warfare
      inventory_order = "la[angels]-f[exploration]-a",
      --icon = "__angelsexploration__/graphics/technology/heavy-tank-tech.png",
      --icon_size = 128
      icons = {
        {
          icon = "__angelsexploration__/graphics/technology/heavy-tank-tech.png",
          icon_size = 128,
          scale = 0.5
        },
        {
          icon = "__angelsexploration__/graphics/icons/void.png",
          icon_size = 32,
          scale = 64 / 32 * 0.35,
          shift = {20, -20}
        }
      }
    },
    {
      type = "item-subgroup",
      name = "angels-exploration",
      group = "angels-exploration",
      order = "a"
    },
    {
      type = "item-subgroup",
      name = "angels-exploration-vehicles",
      group = "angels-exploration",
      order = "b"
    },
    {
      type = "item-subgroup",
      name = "angels-physical-a", -- regular gun
      group = "angels-exploration",
      order = "ca"
    },
    {
      type = "item-subgroup",
      name = "angels-physical-b", -- shotgun
      group = "angels-exploration",
      order = "cb"
    },
    {
      type = "item-subgroup",
      name = "angels-fire",
      group = "angels-exploration",
      order = "d"
    },
    {
      type = "item-subgroup",
      name = "angels-explosion-a", -- rocket
      group = "angels-exploration",
      order = "ea"
    },
    {
      type = "item-subgroup",
      name = "angels-explosion-b", -- cannon
      group = "angels-exploration",
      order = "eb"
    },
    {
      type = "item-subgroup",
      name = "angels-electric",
      group = "angels-exploration",
      order = "f"
    },
    {
      type = "item-subgroup",
      name = "angels-artillery",
      group = "angels-exploration",
      order = "g"
    },
    -- order h reserved for bob personal equipment
    {
      type = "item-subgroup",
      name = "angels-turrets",
      group = "angels-exploration",
      order = "z"
    }
  }
)
