local OV = angelsmods.functions.OV

-- function to know if this is special vanilla or not
is_special_vanilla = function(ores)
  for ore_name, ore_enabled in pairs(ores or {}) do
    if ore_enabled and ore_name ~= "iron" and ore_name ~= "copper" then
      return false
    end
  end
  return true
end
local special_vanilla = is_special_vanilla(angelsmods.trigger.ores)

-- lookup table to convert ore name to trigger name
local get_trigger_name = {
  -- TIER 1 ORES
  ["iron-ore"] = "iron",
  ["angels-iron-nugget"] = special_vanilla and "iron" or "unused", -- special vanilla only
  ["angels-iron-pebbles"] = special_vanilla and "iron" or "unused", -- special vanilla only
  ["angels-iron-slag"] = special_vanilla and "iron" or "unused", -- special vanilla only
  ["copper-ore"] = "copper",
  ["angels-copper-nugget"] = special_vanilla and "copper" or "unused", -- special vanilla only
  ["angels-copper-pebbles"] = special_vanilla and "copper" or "unused", -- special vanilla only
  ["angels-copper-slag"] = special_vanilla and "copper" or "unused", -- special vanilla only
  -- TIER 1.5 ORES
  ["tin-ore"] = "tin",
  ["lead-ore"] = "lead",
  ["quartz"] = "silicon",
  ["nickel-ore"] = "nickel",
  ["manganese-ore"] = "manganese",
  -- TIER 2 ORES
  ["zinc-ore"] = "zinc",
  ["bauxite-ore"] = "aluminium",
  ["cobalt-ore"] = "cobalt",
  ["silver-ore"] = "silver",
  ["fluorite-ore"] = "fluorite", -- byproduct
  -- TIER 2.5 ORES
  ["gold-ore"] = "gold",
  -- TIER 3 ORES
  ["rutile-ore"] = "titanium",
  ["uranium-ore"] = "uranium",
  -- TIER 4 ORES
  ["tungsten-ore"] = "tungsten",
  ["thorium-ore"] = "thorium",
  ["chrome-ore"] = "chrome",
  ["platinum-ore"] = "platinum"
}
local ore_exists = function(ore_name)
  if angelsmods.trigger.ores[get_trigger_name[ore_name] or ore_name] then
    return true
  end
  if angelsmods.trigger.refinery_products[ore_name] then
    return true
  end
  return false
end
angelsmods.functions.ore_exists = ore_exists

-- function to create the (regular) sorted results for an ore, disables it if it is unused
local create_sorting_recipes = function(refinery_product, recipe_base_name, sorted_ore_results, advanced_sorting)
  local localisation_base_name = "angels-ore%s"
  local recipes = {}
  for tier, tier_name in pairs(
    advanced_sorting and {"crushed", "powder", "dust", "crystal"} or {"crushed", "chunk", "crystal", "pure"}
  ) do
    local recipe_used = false
    local recipe = {name = string.format(recipe_base_name, "-" .. tier_name .. "-processing"), results = {}}
    if angelsmods.trigger.refinery_products[refinery_product] then
      local localised_ores = {
        string.format(localisation_base_name, string.sub(recipe_base_name, -3, -3) .. "-" .. tier_name),
        string.format(localisation_base_name, "-" .. tier_name)
      }
      for ore_name, ore_amounts in pairs(sorted_ore_results or {}) do
        local ore_amount = (ore_amounts or {})[tier]
        if ore_name == "!!" then
          if ore_amount then
            table.insert(recipe.results, {"!!"})
          end
        else
          if not angelsmods.trigger.ores[get_trigger_name[ore_name] or ore_name] then
            ore_amount = 0
          end
          if ore_amount and ore_amount > 0 then
            table.insert(recipe.results, {type = "item", name = ore_name, amount = ore_amount})
            local string_index = string.find(ore_name, "-ore")
            if string_index then
              table.insert(localised_ores, string.sub(ore_name, 1, string_index - 1))
            else
              table.insert(localised_ores, ore_name)
            end
            recipe_used = true
          end
        end
      end
      if not advanced_sorting then
        -- add localisation
        if tier_name ~= "pure" then
          table.insert(localised_ores, "slag")
          angelsmods.functions.add_localization(unpack(localised_ores))
        else
          angelsmods.functions.add_localization(unpack(localised_ores))
          localised_ores[1] = string.format(localisation_base_name, string.sub(recipe_base_name, -3, -3))
          localised_ores[2] = string.format(localisation_base_name, "")
          angelsmods.functions.add_localization(unpack(localised_ores))
        end
      end
    else
      angelsmods.functions.OV.disable_recipe(string.format(recipe_base_name, "-" .. tier_name))
    end
    if recipe_used then
      table.insert(recipes, recipe)
    else
      angelsmods.functions.OV.disable_recipe(recipe.name)
    end
  end
  if advanced_sorting and not angelsmods.trigger.refinery_products[refinery_product] then
    angelsmods.functions.OV.disable_recipe(string.format(recipe_base_name, "sludge"))
    angelsmods.functions.OV.disable_recipe(string.format(recipe_base_name, "solution"))
    angelsmods.functions.OV.disable_recipe(string.format(recipe_base_name, "anode-sludge-filtering"))
    angelsmods.functions.OV.disable_recipe(string.format(recipe_base_name, "anode-sludge"))
  end
  return recipes
end

-- function to create the mixed sorted results for an ore, disables it if it is unused
local create_sorting_mix_recipe = function(recipe_base_name, ore_result_products, icon_names, ingredients_overrides)
  local recipes = {}
  for recipe_index, ore_result_product in pairs(ore_result_products) do
    local ore_name =
      type(ore_result_product) == "table" and (ore_result_product[1] or ore_result_product.name) or ore_result_product
    local ore_amount = type(ore_result_product) == "table" and (ore_result_product[2] or ore_result_product.amount) or 1
    local recipe = {
      name = string.format(recipe_base_name, recipe_index),
      results = {
        {"!!"},
        {
          type = type(ore_result_product) == "table" and ore_result_product.type or "item",
          name = ore_name,
          amount = ore_amount
        }
      }
    }
    if angelsmods.trigger.ores[get_trigger_name[ore_name] or ore_name] and ore_amount > 0 then
      local icon_name = (icon_names or {})[recipe_index]
      if icon_name then
        if type(icon_name) == "table" then
          recipe.icons = icon_name -- maybe improve this?
        else
          recipe.icon = string.format("__angelsrefining__/graphics/icons/%s", icon_name)
        end
      end
      local ingredients_override = (ingredients_overrides or {})[recipe_index]
      if ingredients_override then
        local ingredients_override_used = false
        local ingredients = {{"!!"}}
        for _, ingredient in pairs(ingredients_override) do
          local ingredient_name = ingredient.name or ingredient[1]
          local ingredient_amount = ingredient.amount or ingredient[2]
          if ingredient_amount > 0 then -- todo: check if ingredient exist in triggers?
            table.insert(
              ingredients,
              {type = ingredient.type or "item", name = ingredient_name, amount = ingredient_amount}
            )
            ingredients_override_used = true
          end
        end
        if ingredients_override_used then
          recipe.ingredients = ingredients
        end
      end
      table.insert(recipes, recipe)
    else
      angelsmods.functions.OV.disable_recipe(recipe.name)
    end
  end
  return recipes
end

-- function to create the slag sorting results disables it if it is unused
local create_slag_recipes = function(recipe_base_name, ore_result_products, recipe_icons)
  local recipes = {}
  for recipe_index = 1, 9 do
    local recipe = {name = string.format(recipe_base_name, string.format("-%i", recipe_index)), results = {{"!!"}}}
    local recipe_used = false
    local localised_ores = {recipe.name, string.format(recipe_base_name, "")}
    for ore_name, ore_amounts in pairs(ore_result_products or {}) do
      local ore_amount = ore_amounts[recipe_index]
      local ore_probability = nil
      if angelsmods.trigger.ores[get_trigger_name[ore_name] or ore_name] and ore_amount > 0 then
        if ore_amount < 1 then
          ore_probability, ore_amount = ore_amount, 1
        end
        table.insert(
          recipe.results,
          {name = ore_name, type = "item", amount = ore_amount, probability = ore_probability}
        )
        recipe_used = true
        local string_index = string.find(ore_name, "-ore")
        if string_index then
          table.insert(localised_ores, string.sub(ore_name, 1, string_index - 1))
        else
          table.insert(localised_ores, ore_name)
        end
      end
    end
    if recipe_used then
      if type(recipe_icons[recipe_index]) == "table" then
        recipe.icons = recipe_icons[recipe_index] -- maybe improve this?
      else
        recipe.icon = recipe_icons[recipe_index]
      end
      if not special_vanilla then
        angelsmods.functions.add_recipe_localization(unpack(localised_ores))
      end
      table.insert(recipes, recipe)
    else
      OV.disable_recipe(recipe.name)
    end
  end
  return recipes
end

-- function to merge tables, but not override indexes, but keep (different) contents
local merge_table_of_tables = function(recipes_table)
  local big_table = {}
  for _, recipes in pairs(recipes_table) do
    for _, recipe in pairs(recipes or {}) do
      table.insert(big_table, recipe)
    end
  end
  return big_table
end

-------------------------------------------------------------------------------
-- REGULAR SORTING ------------------------------------------------------------
-------------------------------------------------------------------------------
OV.patch_recipes(
  merge_table_of_tables {
    -- SAPHIRITE
    create_sorting_recipes(
      "saphirite",
      "angelsore1%s",
      {
        ["!!"] = {special_vanilla, special_vanilla, special_vanilla, true},
        ["iron-ore"] = special_vanilla and {1, 1, 2, 2} or {2, 2, 3, 3},
        ["angels-iron-nugget"] = special_vanilla and {1, 2, 3, 5},
        ["angels-iron-pebbles"] = special_vanilla and {2, 4, 3, 3},
        ["angels-iron-slag"] = special_vanilla and {0, 0, 1, 1},
        ["copper-ore"] = (not special_vanilla) and {1, 1, 1, 2},
        ["quartz"] = (not special_vanilla) and {0, 1, 1, 1},
        ["nickel-ore"] = (not special_vanilla) and {0, 1, 1, 1},
        ["rutile-ore"] = (not special_vanilla) and {0, 0, 1, 1},
        ["zinc-ore"] = (not special_vanilla) and {0, 0, 0, 1}
      }
    ),
    -- JIVOLITE
    create_sorting_recipes(
      "jivolite",
      "angelsore2%s",
      {
        ["!!"] = {special_vanilla, special_vanilla, special_vanilla, true},
        ["iron-ore"] = special_vanilla and {2, 2, 3, 5} or {2, 2, 3, 3},
        ["angels-iron-nugget"] = special_vanilla and {1, 2, 3, 4},
        ["angels-iron-pebbles"] = special_vanilla and {1, 1, 2, 4},
        ["angels-iron-slag"] = special_vanilla and {0, 1, 2, 2},
        ["copper-ore"] = (not special_vanilla) and {1, 1, 1, 2},
        ["bauxite-ore"] = (not special_vanilla) and {0, 1, 1, 1},
        ["zinc-ore"] = (not special_vanilla) and {0, 1, 1, 1},
        ["silver-ore"] = (not special_vanilla) and {0, 0, 1, 1},
        ["tungsten-ore"] = (not special_vanilla) and {0, 0, 0, 1}
      }
    ),
    -- STIRATITE
    create_sorting_recipes(
      "stiratite",
      "angelsore3%s",
      {
        ["!!"] = {special_vanilla, special_vanilla, special_vanilla, true},
        ["copper-ore"] = special_vanilla and {2, 2, 4, 3} or {2, 2, 3, 3},
        ["angels-copper-nugget"] = special_vanilla and {1, 2, 2, 4},
        ["angels-copper-pebbles"] = special_vanilla and {0, 2, 3, 5},
        ["angels-copper-slag"] = special_vanilla and {0, 0, 1, 1},
        ["iron-ore"] = (not special_vanilla) and {1, 1, 1, 2},
        ["cobalt-ore"] = (not special_vanilla) and {0, 1, 1, 1},
        ["tin-ore"] = (not special_vanilla) and {0, 1, 1, 1},
        ["uranium-ore"] = (not special_vanilla) and {0, 0, 1, 1},
        ["bauxite-ore"] = (not special_vanilla) and {0, 0, 0, 1}
      }
    ),
    -- CROTINIUM
    create_sorting_recipes(
      "crotinnium",
      "angelsore4%s",
      {
        ["!!"] = {special_vanilla, special_vanilla, special_vanilla, true},
        ["copper-ore"] = special_vanilla and {0, 1, 2, 3} or {2, 2, 3, 3},
        ["angels-copper-nugget"] = special_vanilla and {2, 2, 4, 5},
        ["angels-copper-pebbles"] = special_vanilla and {1, 3, 3, 4},
        ["angels-copper-slag"] = special_vanilla and {0, 1, 1, 2},
        ["iron-ore"] = (not special_vanilla) and {1, 1, 1, 2},
        ["lead-ore"] = (not special_vanilla) and {0, 1, 1, 1},
        ["silver-ore"] = (not special_vanilla) and {0, 1, 1, 1},
        ["gold-ore"] = (not special_vanilla) and {0, 0, 1, 1},
        ["rutile-ore"] = (not special_vanilla) and {0, 0, 0, 1}
      }
    ),
    -- RUBYTE
    create_sorting_recipes(
      "rubyte",
      "angelsore5%s",
      {
        ["!!"] = (not special_vanilla) and {false, false, false, true},
        ["lead-ore"] = (not special_vanilla) and {2, 2, 3, 3},
        ["nickel-ore"] = (not special_vanilla) and {1, 1, 1, 2},
        ["bauxite-ore"] = (not special_vanilla) and {0, 1, 1, 1},
        ["gold-ore"] = (not special_vanilla) and {0, 1, 1, 1},
        ["rutile-ore"] = (not special_vanilla) and {0, 0, 1, 1},
        ["tungsten-ore"] = (not special_vanilla) and {0, 0, 0, 1}
      }
    ),
    -- BOBMONIUM
    create_sorting_recipes(
      "bobmonium",
      "angelsore6%s",
      {
        ["!!"] = (not special_vanilla) and {false, false, false, true},
        ["tin-ore"] = (not special_vanilla) and {2, 2, 3, 3},
        ["quartz"] = (not special_vanilla) and {1, 1, 1, 2},
        ["cobalt-ore"] = (not special_vanilla) and {0, 1, 1, 1},
        ["zinc-ore"] = (not special_vanilla) and {0, 1, 1, 1},
        ["bauxite-ore"] = (not special_vanilla) and {0, 0, 1, 1},
        ["uranium-ore"] = (not special_vanilla) and {0, 0, 0, 1}
      }
    ),
    -- FERROUS
    ore_exists("ferrous") and
      create_sorting_recipes(
        "ferrous",
        "angelsore8%s",
        {
          ["!!"] = (not special_vanilla) and {true, true, true, true},
          ["iron-ore"] = (not special_vanilla) and {2, 3, 4, 4},
          ["manganese-ore"] = (not special_vanilla) and {2, 2, 2, 2},
          ["nickel-ore"] = (not special_vanilla) and {0, 1, 1, 1},
          ["cobalt-ore"] = (not special_vanilla) and {0, 0, 1, 1},
          ["chrome-ore"] = (not special_vanilla) and {0, 0, 0, 1}
        },
        true
      ) or
      nil,
    -- CUPRIC
    ore_exists("cupric") and
      create_sorting_recipes(
        "cupric",
        "angelsore9%s",
        {
          ["!!"] = (not special_vanilla) and {true, true, true, true},
          ["copper-ore"] = (not special_vanilla) and {2, 3, 4, 4},
          ["tin-ore"] = (not special_vanilla) and {2, 2, 2, 2},
          ["quartz"] = (not special_vanilla) and {0, 1, 1, 1},
          ["gold-ore"] = (not special_vanilla) and {0, 0, 1, 1},
          ["platinum-ore"] = (not special_vanilla) and {0, 0, 0, 1}
        },
        true
      ) or
      nil
  }
)

if not special_vanilla then
  -- disable the nuggets and pebbles
  OV.disable_recipe(
    {
      "angels-iron-nugget-smelting",
      "angels-iron-pebbles-smelting",
      "angels-copper-nugget-smelting",
      "angels-copper-pebbles-smelting",
      "angels-iron-pebbles",
      "angels-copper-pebbles"
    }
  )
  angelsmods.functions.add_flag("angels-iron-nugget", "hidden")
  angelsmods.functions.add_flag("angels-iron-pebbles", "hidden")
  angelsmods.functions.add_flag("angels-iron-slag", "hidden")
  angelsmods.functions.add_flag("angels-copper-nugget", "hidden")
  angelsmods.functions.add_flag("angels-copper-pebbles", "hidden")
  angelsmods.functions.add_flag("angels-copper-slag", "hidden")
end

-- take care of the special sorting fluids
if ore_exists("ferrous") then
  angelsmods.functions.move_item("angels-ore8-sludge", "ore-processing-fluid", "a[ferrous]-a", "fluid")
  angelsmods.functions.move_item("angels-ore8-solution", "ore-processing-fluid", "a[ferrous]-b", "fluid")
  angelsmods.functions.move_item("angels-ore8-anode-sludge", "ore-processing-fluid", "a[ferrous]-c", "fluid")
  angelsmods.functions.move_item("angels-ore8-slime", "ore-processing-fluid", "a[ferrous]-d", "fluid")
else
  data.raw.fluid["angels-ore8-sludge"].hidden = true
  data.raw.fluid["angels-ore8-solution"].hidden = true
  data.raw.fluid["angels-ore8-anode-sludge"].hidden = true
  data.raw.fluid["angels-ore8-slime"].hidden = true
  OV.remove_unlock("ore-powderizer", "angelsore8-powder")
  OV.remove_unlock("ore-powderizer", "angelsore8-powder-processing")
  OV.remove_unlock("ore-advanced-floatation", "angelsore8-sludge")
  OV.remove_unlock("ore-advanced-floatation", "angelsore8-dust")
  OV.remove_unlock("ore-advanced-floatation", "angelsore8-dust-processing")
  OV.remove_unlock("ore-electro-whinning-cell", "angelsore8-solution")
  OV.remove_unlock("ore-electro-whinning-cell", "angelsore8-anode-sludge")
  OV.remove_unlock("ore-electro-whinning-cell", "angelsore8-anode-sludge-filtering")
  OV.remove_unlock("ore-electro-whinning-cell", "angelsore8-crystal")
  OV.remove_unlock("ore-electro-whinning-cell", "angelsore8-crystal-processing")

  OV.disable_recipe(
    {
      "angelsore8-powder",
      "angelsore8-powder-processing",
      "angelsore8-sludge",
      "angelsore8-dust",
      "angelsore8-dust-processing",
      "angelsore8-solution",
      "angelsore8-anode-sludge",
      "angelsore8-anode-sludge-filtering",
      "angelsore8-crystal",
      "angelsore8-crystal-processing"
    }
  )
end
if ore_exists("cupric") then
  angelsmods.functions.move_item("angels-ore9-sludge", "ore-processing-fluid", "b[cupric]-a", "fluid")
  angelsmods.functions.move_item("angels-ore9-solution", "ore-processing-fluid", "b[cupric]-b", "fluid")
  angelsmods.functions.move_item("angels-ore9-anode-sludge", "ore-processing-fluid", "b[cupric]-c", "fluid")
  angelsmods.functions.move_item("angels-ore9-slime", "ore-processing-fluid", "b[cupric]-d", "fluid")
else
  data.raw.fluid["angels-ore9-sludge"].hidden = true
  data.raw.fluid["angels-ore9-solution"].hidden = true
  data.raw.fluid["angels-ore9-anode-sludge"].hidden = true
  data.raw.fluid["angels-ore9-slime"].hidden = true
  OV.remove_unlock("ore-powderizer", "angelsore9-powder")
  OV.remove_unlock("ore-powderizer", "angelsore9-powder-processing")
  OV.remove_unlock("ore-advanced-floatation", "angelsore9-sludge")
  OV.remove_unlock("ore-advanced-floatation", "angelsore9-dust")
  OV.remove_unlock("ore-advanced-floatation", "angelsore9-dust-processing")
  OV.remove_unlock("ore-electro-whinning-cell", "angelsore9-solution")
  OV.remove_unlock("ore-electro-whinning-cell", "angelsore9-anode-sludge")
  OV.remove_unlock("ore-electro-whinning-cell", "angelsore9-anode-sludge-filtering")
  OV.remove_unlock("ore-electro-whinning-cell", "angelsore9-crystal")
  OV.remove_unlock("ore-electro-whinning-cell", "angelsore9-crystal-processing")
  OV.disable_recipe(
    {
      "angelsore9-powder",
      "angelsore9-powder-processing",
      "angelsore9-sludge",
      "angelsore9-dust",
      "angelsore9-dust-processing",
      "angelsore9-solution",
      "angelsore9-anode-sludge",
      "angelsore9-anode-sludge-filtering",
      "angelsore9-crystal",
      "angelsore9-crystal-processing"
    }
  )
end

if ore_exists("ferrous") or ore_exists("cupric") then
else
  OV.disable_technology(
    {
      "ore-advanced-crushing",
      "ore-powderizer",
      "ore-advanced-floatation",
      "ore-electro-whinning-cell"
    }
  )
end

if ore_exists("ferrous") and ore_exists("cupric") then
else
  OV.remove_unlock("ore-electro-whinning-cell", "angelsore-crystal-mix6-processing")
  OV.disable_recipe("angelsore-crystal-mix6-processing")
end

-------------------------------------------------------------------------------
-- MIXED SORTING --------------------------------------------------------------
-------------------------------------------------------------------------------
OV.patch_recipes(
  merge_table_of_tables {
    -- CRUSHED
    create_sorting_mix_recipe(
      "angelsore-crushed-mix%i-processing",
      {
        {type = "item", name = "iron-ore", amount = 4},
        special_vanilla and "unused" or {type = "item", name = "copper-ore", amount = 4},
        special_vanilla and {type = "item", name = "copper-ore", amount = 4} or
          {type = "item", name = "lead-ore", amount = 4},
        special_vanilla and "unused" or {type = "item", name = "tin-ore", amount = 4}
      },
      {
        --[[1]] special_vanilla and {
          { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
          { icon = "__angelsrefining__/graphics/icons/iron-nugget.png", scale = 0.5, shift = {10, 10} }
        } or {
          { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
          { icon = "__base__/graphics/icons/iron-ore.png", icon_size = 64, scale = 32/64 * 0.5, shift = {10, 10} }
        },
        --[[2]] {
          { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
          { icon = "__base__/graphics/icons/copper-ore.png", icon_size = 64, scale = 32/64 * 0.5, shift = {10, 10} }
        },
        --[[3]] special_vanilla and {
          { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
          { icon = "__angelsrefining__/graphics/icons/copper-nugget.png", scale = 0.5, shift = {10, 10} }
        } or {
          { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
          { icon = "__angelssmelting__/graphics/icons/ore-lead.png", scale = 0.5, shift = {10, 10} }
        },
        --[[4]] {
          { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
          { icon = "__angelssmelting__/graphics/icons/ore-tin.png", scale = 0.5, shift = {10, 10} }
        }
      },
      {
        special_vanilla and
          {
            {type = "item", name = "angels-iron-pebbles", amount = 4},
            {type = "item", name = "angels-iron-nugget", amount = 1}
          } or
          nil,
        nil,
        special_vanilla and
          {
            {type = "item", name = "angels-copper-pebbles", amount = 4},
            {type = "item", name = "angels-copper-nugget", amount = 1}
          } or
          nil,
        nil
      }
    ),
    -- CHUNK
    create_sorting_mix_recipe(
      "angelsore-chunk-mix%i-processing",
      {
        special_vanilla and {type = "item", name = "iron-ore", amount = 3} or
          {type = "item", name = "quartz", amount = 4},
        special_vanilla and {type = "item", name = "copper-ore", amount = 3} or
          {type = "item", name = "nickel-ore", amount = 4},
        {type = "item", name = "bauxite-ore", amount = 4},
        {type = "item", name = "zinc-ore", amount = 4},
        {type = "item", name = "fluorite-ore", amount = 2},
        "unused"
      },
      {
        --[[1]] special_vanilla and {
          { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
          { icon = "__angelsrefining__/graphics/icons/iron-slag.png", scale = 0.5, shift = {10, 10} }
        } or {
          { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
          { icon = "__angelssmelting__/graphics/icons/ore-silica.png", scale = 0.5, shift = {10, 10} }
        },
        --[[2]] special_vanilla and {
          { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
          { icon = "__angelsrefining__/graphics/icons/copper-slag.png", scale = 0.5, shift = {10, 10} }
        } or {
          { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
          { icon = "__angelssmelting__/graphics/icons/ore-nickel.png", scale = 0.5, shift = {10, 10} }
        },
        --[[3]] {
          { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
          { icon = "__angelssmelting__/graphics/icons/ore-bauxite.png", scale = 0.5, shift = {10, 10} }
        },
        --[[4]] {
          { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
          { icon = "__angelssmelting__/graphics/icons/ore-zinc.png", scale = 0.5, shift = {10, 10} }
        },
        --[[5]] {
          {icon = "__angelsrefining__/graphics/icons/sort-icon.png"},
          {icon = "__angelsrefining__/graphics/icons/ore-fluorite.png", scale = 0.5, shift = {10, 10}}
        },
        --[[6]] nil
      },
      {
        special_vanilla and
          {
            {type = "item", name = "angels-iron-pebbles", amount = 3},
            {type = "item", name = "angels-iron-slag", amount = 1}
          } or
          nil,
        special_vanilla and
          {
            {type = "item", name = "angels-copper-pebbles", amount = 3},
            {type = "item", name = "angels-copper-slag", amount = 1}
          } or
          nil,
        nil,
        nil,
        nil,
        nil
      }
    ),
    -- CRYSTAL
    create_sorting_mix_recipe(
      "angelsore-crystal-mix%i-processing",
      {
        {type = "item", name = "rutile-ore", amount = 6},
        {type = "item", name = "gold-ore", amount = 6},
        {type = "item", name = "cobalt-ore", amount = 6},
        {type = "item", name = "silver-ore", amount = 6},
        {type = "item", name = "uranium-ore", amount = special_vanilla and 0 or 3},
        {type = "item", name = "thorium-ore", amount = 1}
      },
      {
        --[[1]] {
          { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
          { icon = "__angelssmelting__/graphics/icons/ore-rutile.png", scale = 0.5, shift = {10, 10} }
        },
        --[[2]] {
          { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
          { icon = "__angelssmelting__/graphics/icons/ore-gold.png", scale = 0.5, shift = {10, 10} }
        },
        --[[3]] {
          { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
          { icon = "__angelssmelting__/graphics/icons/ore-cobalt.png", scale = 0.5, shift = {10, 10} }
        },
        --[[4]] {
          { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
          { icon = "__angelssmelting__/graphics/icons/ore-silver.png", scale = 0.5, shift = {10, 10} }
        },
        --[[5]] {
          {icon = "__angelsrefining__/graphics/icons/sort-icon.png"},
          {icon = "__base__/graphics/icons/uranium-ore.png", scale = 32 / 64 * 0.5, shift = {10, 10}, icon_size = 64}
        },
        --[[6]] {
          {icon = "__angelsrefining__/graphics/icons/sort-icon.png"},
          {
            icon = mods["angelsindustries"] and angelsmods.industries.overhaul and
              "__angelssmelting__/graphics/icons/ore-thorium.png" or
              mods["bobplates"] and "__boblibrary__/graphics/icons/ore-5.png" or
              "__angelsrefining__/graphics/icons/sort-icon.png",
            icon_size = mods["angelsindustries"] and angelsmods.industries.overhaul and 64 or mods["bobplates"] and 32 or
              32,
            tint = {b = 0.25, g = 1, r = 1},
            scale = 0.5 * (mods["angelsindustries"] and angelsmods.industries.overhaul and 0.5 or 1),
            shift = {10, 10}
          }
        }
      }
    ),
    -- PURE
    create_sorting_mix_recipe(
      "angelsore-pure-mix%i-processing",
      {
        {type = "item", name = "tungsten-ore", amount = 6},
        {type = "item", name = "platinum-ore", amount = 3},
        "unused"
      },
      {
        --[[1]] {
          { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
          { icon = "__angelssmelting__/graphics/icons/ore-tungsten.png", scale = 0.5, shift = {10, 10} }
        },
        --[[2]] {
          { icon = "__angelsrefining__/graphics/icons/sort-icon.png" },
          { icon = "__angelssmelting__/graphics/icons/ore-platinum.png", scale = 0.5, shift = {10, 10} }
        },
        --[[3]] nil
      }
    )
  }
)

-------------------------------------------------------------------------------
-- SLAG SORTING ---------------------------------------------------------------
-------------------------------------------------------------------------------
local slag_color = {{202, 099, 017}, {097, 052, 020}, {097, 052, 020}}
OV.patch_recipes(
  merge_table_of_tables {
    create_slag_recipes(
      "slag-processing%s",
      {
        ["iron-ore"] = {special_vanilla and 0.8 or 0.4, 0, 0, 0, 0, 0, 0, 0, 0},
        ["angels-iron-pebbles"] = special_vanilla and {0, 0, 0, 3 * 0.8, 0, 0, 0, 0, 0} or nil,
        ["copper-ore"] = {special_vanilla and 0 or 0.4, special_vanilla and 0.8 or 0, 0, 0, 0, 0, 0, 0, 0},
        ["angels-copper-pebbles"] = special_vanilla and {0, 0, 0, 0, 3 * 0.8, 0, 0, 0, 0} or nil,
        ["lead-ore"] = {0, 0.4, 0, 0, 0, 0, 0, 0, 0},
        ["tin-ore"] = {0, 0.4, 0, 0, 0, 0, 0, 0, 0},
        ["quartz"] = {0, 0, 0.4, 0, 0, 0, 0, 0, 0},
        ["silver-ore"] = {0, 0, 0.4, 0, 0, 0, 0, 0, 0},
        ["gold-ore"] = {0, 0, 0, 0.4, 0, 0, 0, 0, 0},
        ["nickel-ore"] = {0, 0, 0, 0.4, 0, 0, 0, 0, 0},
        ["zinc-ore"] = {0, 0, 0, 0, 0.4, 0, 0, 0, 0},
        ["rutile-ore"] = {0, 0, 0, 0, 0.4, 0, 0, 0, 0},
        ["bauxite-ore"] = {0, 0, 0, 0, 0, 0.4, 0, 0, 0},
        ["manganese-ore"] = {0, 0, 0, 0, 0, ore_exists("platinum-ore") and ore_exists("chrome-ore") and 0.4 or ore_exists("chrome-ore") and 0.2 or 0.4, 0, 0, 0},
        ["chrome-ore"] = { 0, 0, 0, 0, 0, ore_exists("platinum-ore") and 0 or 0.2, ore_exists("platinum-ore") and 0.4 or 0, 0, 0},
        ["platinum-ore"] = {0, 0, 0, 0, 0, 0, 0.4, 0, 0},
        ["cobalt-ore"] = {0, 0, 0, 0, 0, 0, 0, 0.4, 0},
        ["tungsten-ore"] = {0, 0, 0, 0, 0, 0, 0, 0.4, 0},
        ["uranium-ore"] = {0, 0, 0, 0, 0, 0, 0, 0, 0.4},
        ["fluorite-ore"] = {0, 0, 0, 0, 0, 0, 0, 0, 0.2},
        ["thorium-ore"] = {0, 0, 0, 0, 0, 0, 0, 0, 0.005}
      },
      {
        --[[1]] angelsmods.functions.create_liquid_recipe_icon(
            {
              "iron-ore",
              (not special_vanilla) and "copper-ore" or nil
            },
            slag_color
          ),
        --[[2]] angelsmods.functions.create_liquid_recipe_icon(
            {
              special_vanilla and "copper-ore" or "lead-ore",
              (not special_vanilla) and "tin-ore" or nil
            },
            slag_color
          ),
        --[[3]] angelsmods.functions.create_liquid_recipe_icon(
          {
            "silver-ore",
            "quartz"
          },
          slag_color
        ),
        --[[4]] angelsmods.functions.create_liquid_recipe_icon(
            {
              special_vanilla and "angels-iron-pebbles" or "gold-ore",
              (not special_vanilla) and "nickel-ore" or nil
            },
            slag_color
          ),
        --[[5]] angelsmods.functions.create_liquid_recipe_icon(
            {
              special_vanilla and "angels-copper-pebbles" or "zinc-ore",
              (not special_vanilla) and "rutile-ore" or nil
            },
            slag_color
          ),
        --[[6]] angelsmods.functions.create_liquid_recipe_icon(
          {
            "bauxite-ore",
            ore_exists("manganese-ore") and "manganese-ore" or nil,
            (not ore_exists("platinum-ore")) and ore_exists("chrome-ore") and "chrome-ore" or nil
          },
          slag_color
        ),
        --[[7]] ore_exists("platinum-ore") and
          angelsmods.functions.create_liquid_recipe_icon(
            {
              "platinum-ore",
              "chrome-ore"
            },
            slag_color
          ) or
          nil,
        --[[8]] angelsmods.functions.create_liquid_recipe_icon(
          {
            "cobalt-ore",
            "tungsten-ore"
          },
          slag_color
        ),
        --[[9]] angelsmods.functions.create_liquid_recipe_icon(
          {
            "uranium-ore",
            ore_exists("fluorite-ore") and "fluorite-ore" or nil,
            ore_exists("thorium-ore") and "thorium-ore" or nil
          },
          slag_color
        )
      }
    ),
    {
      mods["angelssmelting"] and
        {name = "filter-ceramic", ingredients = {{type = "item", name = "solid-aluminium-oxide", amount = 1}}} or
        nil
    }
  }
)
