require "compat.galore"
require "compat.5dim"
require "compat.wood-universe"
require "compat.planets"
require "compat.qualitybiolab"
require "compat.nuclear-science"
require "compat.aai"

local function add_crafting_categories(entity_type, entity_name, categories)
  local entity = data.raw[entity_type][entity_name]
  for _,category in pairs(categories) do
    table.insert(entity.crafting_categories, category)
  end
end
if mods["bobassembly"] then 
  if mods["aai-industry"] then return end
      if settings.startup["bobmods-assembly-burner"].value then
      add_crafting_categories("assembling-machine", "bob-burner-assembling-machine", {"advanced-centrifuging", "crafting", "advanced-centrifuging", "crafting", "electromechanics", "quantum-assembling", "crafting", "woodworking", "crafting", "electromechanics", "crafting", "electronics", "electromechanics", "pressing", "electromechanics", "ammunition", "crafting", "woodworking", "organic", "organic", "electromechanics"})
      add_crafting_categories("assembling-machine", "bob-steam-assembling-machine", {"advanced-centrifuging", "crafting", "advanced-centrifuging", "crafting", "electromechanics", "quantum-assembling", "crafting", "woodworking", "crafting", "electromechanics", "crafting", "biochemistry", "organic", "woodworking", "organic", "petrochemistry", "organic", "electronics", "electromechanics", "pressing", "electromechanics", "quantum-assembling", "crafting-with-fluid", "advanced-centrifuging", "crafting-with-fluid", "ammunition", "crafting", "synthesis", "crafting-with-fluid", "organic", "electromechanics", "ammunition", "crafting-with-fluid"})
  end
end

 if mods["fulgora-coralmium-agriculture"] then
 if not mods["wood-industry"] then
  add_crafting_categories("assembling-machine", "chemical-plant", {"woodworking", "organic"})
 end
 if mods["wood-industry"] then
  data.raw.recipe["burnt-spoilage"].categories = { "organic", "kiln-smelting" }
  add_crafting_categories("assembling-machine", "aop-lumber-mill", {"organic", "kiln-smelting"})
 end
end

if settings.startup["aop-prevent-loops"].value then
    data.raw["recipe"]["ice-melting"].allow_productivity = false
    data.raw["recipe"]["aop-calcite-synthesis"].allow_productivity = false
    data.raw["recipe"]["aop-stone-synthesis"].allow_productivity = false
    end