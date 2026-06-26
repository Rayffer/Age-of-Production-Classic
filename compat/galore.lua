if not mods["space_age_galore"] then return end

local exclusions = { "vgal-bulk-inserter-chemical-science-pack", "vgal-big-mining-drill-calcite-metallurgic-science-pack", "vgal-ammonia-agricultural-science-pack", "vgal-sulfur-petroleum-gas-agricultural-science-pack", "vgal-electronic-circuit-agricultural-science-pack"  } -- Add recipe names to exclude

for _, recipe in pairs(data.raw.recipe) do
    if recipe.name:find("^vgal-.*%-science%-pack$") then
        local exclude = false
        for _, excluded_name in ipairs(exclusions) do
            if recipe.name == excluded_name then
                exclude = true
                break
            end
        end
        if not exclude then
            recipe.categories = { "quantum-assembling", "crafting" }
        end
    end
end
data.raw.recipe["vgal-bulk-inserter-chemical-science-pack"].categories = { "quantum-assembling", "crafting-with-fluid" }
data.raw.recipe["vgal-processing-unit-nuclear-reactor"].categories = { "advanced-centrifuging", "crafting" }
data.raw.recipe["vgal-processing-unit-centrifuge"].categories = { "advanced-centrifuging", "crafting" }
data.raw.recipe["vgal-uranium-238-low-density-structure"].categories = { "advanced-centrifuging", "crafting" }
data.raw.recipe["vgal-wood-electronic-circuit"].categories = { "woodworking" }
data.raw.recipe["vgal-wood-heavy-oil-electronic-circuit"].categories = { "woodworking" }
data.raw.recipe["vgal-steel-plate-uranium-fuel-cell"].categories = { "advanced-centrifuging", "crafting-with-fluid" }
data.raw.recipe["vgal-low-density-structure-uranium-fuel-cell"].categories = { "advanced-centrifuging", "crafting-with-fluid" }
data.raw.recipe["vgal-petroleum-gas-rocket-fuel"].categories = { "petrochemistry", "organic",  }
data.raw.recipe["vgal-sulfuric-acid-sulfur"].categories = { "hydraulics", "chemistry", "cryogenics" }
data.raw.recipe["vgal-pentapod-egg-bioflux-stone"].categories = { "biochemistry", "organic" }
data.raw.recipe["vgal-wood-carbon"].categories = { "woodworking", "organic" }
data.raw.recipe["vgal-solid-fuel-carbon"].categories = { "petrochemistry", "chemistry", "cryogenics" }
data.raw.recipe["vgal-solid-fuel-sulfuric-acid-carbon"].categories = { "petrochemistry", "chemistry", "cryogenics" }
data.raw.recipe["vgal-carbon-sulfur-lubricant"].categories = { "hydraulics", "chemistry" }
data.raw.recipe["vgal-carbon-lubricant"].categories = { "hydraulics", "chemistry" }
data.raw.recipe["vgal-plastic-bar-lubricant"].categories = { "hydraulics", "chemistry" }
data.raw.recipe["vgal-calcite-stone-holmium-solution"].categories = { "hydraulics", "chemistry" }
data.raw.recipe["vgal-jelly-electronic-circuit"].categories = { "biochemistry", "organic" }
data.raw.recipe["vgal-processing-unit-tank"].categories = { "electromechanics", "crafting" }
data.raw.recipe["vgal-processing-unit-roboport"].categories = { "electromechanics", "crafting" }
data.raw.recipe["vgal-processing-unit-modular-armor"].categories = { "electromechanics", "crafting" }
data.raw.recipe["vgal-low-density-structure-power-armor"].categories = { "electromechanics", "crafting" }
data.raw.recipe["vgal-low-density-structure-battery-equipment"].categories = { "electromechanics", "crafting" }
data.raw.recipe["vgal-processing-unit-belt-immunity-equipment"].categories = { "electromechanics", "crafting" }
data.raw.recipe["vgal-processing-unit-personal-roboport-equipment"].categories = { "electromechanics", "crafting" }
data.raw.recipe["vgal-processing-unit-night-vision-equipment"].categories = { "electromechanics", "crafting" }
data.raw.recipe["vgal-processing-unit-energy-shield-equipment"].categories = { "electromechanics", "crafting" }
data.raw.recipe["vgal-steam-heavy-oil-light-oil"].categories = { "petrochemistry" }
data.raw.recipe["vgal-steam-light-oil-petroleum-gas"].categories = { "petrochemistry" }
data.raw.recipe["vgal-steam-advanced-oil-processing"].categories = { "petrochemistry" }
data.raw.recipe["vgal-steam-crude-oil-sulfur"].categories = { "petrochemistry" }
data.raw.recipe["vgal-coal-uranium-235-nuclear-fuel"].categories = { "advanced-centrifuging" }
data.raw.recipe["vgal-jelly-sulfur-lubricant"].categories = { "hydraulics", "organic" }
data.raw.recipe["vgal-water-coal-ammonia"].categories = { "hydraulics", "chemistry" }
data.raw.recipe["vgal-calcite-sulfuric-acid-ammonia"].categories = { "hydraulics", "chemistry" }
data.raw.recipe["vgal-ammonia-water-crude-oil"].categories = { "petrochemistry", "organic", "chemistry" }
data.raw.recipe["vgal-pentapod-egg-logistic-robot"].categories = { "organic", "electromechanics" }
data.raw.recipe["vgal-pentapod-egg-construction-robot"].categories = { "organic", "electromechanics" }
data.raw.recipe["vgal-petroleum-gas-coal-heavy-oil"].categories = { "petrochemistry", "organic", "chemistry" }
data.raw.recipe["vgal-tungsten-plate-piercing-rounds-magazine"].categories = { "ammunition", "crafting" }
data.raw.recipe["vgal-tungsten-plate-cannon-shell"].categories = { "ammunition", "crafting" }
data.raw.recipe["vgal-tungsten-plate-explosive-cannon-shell"].categories = { "ammunition", "crafting" }
data.raw.recipe["vgal-tungsten-plate-piercing-shotgun-shell"].categories = { "ammunition", "crafting" }
data.raw.recipe["vgal-plastic-bar-railgun-ammo"].categories = { "ammunition", "crafting" }
data.raw.recipe["vgal-explosives-grenade"].categories = { "ammunition", "crafting" }
data.raw.recipe["vgal-crude-oil-thruster-fuel"].categories = { "hydraulics" }
data.raw.recipe["vgal-ammonia-thruster-oxidizer"].categories = { "hydraulics" }
data.raw.recipe["vgal-biter-egg-defender-capsule"].categories = { "organic", "electromechanics" }
data.raw.recipe["vgal-pentapod-egg-defender-capsule"].categories = { "organic", "electromechanics" }
data.raw.recipe["vgal-holmium-plate-railgun-ammo"].categories = { "ammunition", "crafting-with-fluid" }
data.raw.recipe["vgal-superconductor-railgun-ammo"].categories = { "ammunition", "crafting" }
data.raw.recipe["vgal-ice-solid-fuel-ammonia"].categories = { "hydraulics", "chemistry" }
data.raw.recipe["vgal-scrap-sulfuric-acid-holmium-solution"].categories = { "hydraulics", "chemistry" }
data.raw.recipe["vgal-thruster-oxidizer-thruster-fuel-steam"].categories = { "hydraulics", "chemistry", "cryogenics" }

local tech = data.raw.technology["electronics"]
for i, effect in ipairs(tech.effects) do
    if effect.type == "unlock-recipe" and effect.recipe == "vgal-wood-electronic-circuit" then
      table.remove(tech.effects, i)
    end
end

local tech = data.raw.technology["advanced-oil-processing"]
for i, effect in ipairs(tech.effects) do
    if effect.type == "unlock-recipe" and effect.recipe == "vgal-wood-heavy-oil-electronic-circuit" then
      table.remove(tech.effects, i)
    end
end

local tech = data.raw.technology["advanced-oil-processing"]
for i, effect in ipairs(tech.effects) do
    if effect.type == "unlock-recipe" and effect.recipe == "vgal-steam-crude-oil-sulfur" then
      table.remove(tech.effects, i)
    end
end

local tech = data.raw.technology["advanced-oil-processing"]
for i, effect in ipairs(tech.effects) do
    if effect.type == "unlock-recipe" and effect.recipe == "vgal-steam-advanced-oil-processing" then
      table.remove(tech.effects, i)
    end
end

local tech = data.raw.technology["advanced-oil-processing"]
for i, effect in ipairs(tech.effects) do
    if effect.type == "unlock-recipe" and effect.recipe == "vgal-steam-heavy-oil-light-oil" then
      table.remove(tech.effects, i)
    end
end

local tech = data.raw.technology["advanced-oil-processing"]
for i, effect in ipairs(tech.effects) do
    if effect.type == "unlock-recipe" and effect.recipe == "vgal-steam-light-oil-petroleum-gas" then
      table.remove(tech.effects, i)
    end
end

local tech = data.raw.technology["kovarex-enrichment-process"]
for i, effect in ipairs(tech.effects) do
    if effect.type == "unlock-recipe" and effect.recipe == "vgal-coal-uranium-235-nuclear-fuel" then
      table.remove(tech.effects, i)
    end
end

local function add_tech_effect(tech_name, effect)
    local tech = data.raw.technology[tech_name]
    tech.effects = tech.effects or {}
    table.insert(tech.effects, effect)
  end
  
  add_tech_effect("aop-woodworking", {type = "unlock-recipe", recipe = "vgal-wood-electronic-circuit"})
  add_tech_effect("aop-woodworking", {type = "unlock-recipe", recipe = "vgal-wood-heavy-oil-electronic-circuit"})
  add_tech_effect("aop-petrochemistry", {type = "unlock-recipe", recipe = "vgal-steam-crude-oil-sulfur"})
  add_tech_effect("aop-petrochemistry", {type = "unlock-recipe", recipe = "vgal-steam-advanced-oil-processing"})
  add_tech_effect("aop-petrochemistry", {type = "unlock-recipe", recipe = "vgal-steam-heavy-oil-light-oil"})
  add_tech_effect("aop-petrochemistry", {type = "unlock-recipe", recipe = "vgal-steam-light-oil-petroleum-gas"})
  add_tech_effect("aop-atomic-enricher", {type = "unlock-recipe", recipe = "vgal-coal-uranium-235-nuclear-fuel"})

  local tech = data.raw.technology["cryogenic-plant"]
for i, effect in ipairs(tech.effects) do
    if effect.type == "unlock-recipe" and effect.recipe == "vgal-crude-oil-thruster-fuel" then
      table.remove(tech.effects, i)
    end
end

local tech = data.raw.technology["cryogenic-plant"]
for i, effect in ipairs(tech.effects) do
    if effect.type == "unlock-recipe" and effect.recipe == "vgal-ammonia-thruster-oxidizer" then
      table.remove(tech.effects, i)
    end
end
  if mods["maraxsis"] then
    add_tech_effect("maraxsis-hydro-plant", {type = "unlock-recipe", recipe = "vgal-crude-oil-thruster-fuel"})
    add_tech_effect("maraxsis-hydro-plant", {type = "unlock-recipe", recipe = "vgal-ammonia-thruster-oxidizer"})
  else
    add_tech_effect("aop-hydraulics", {type = "unlock-recipe", recipe = "vgal-crude-oil-thruster-fuel"})
    add_tech_effect("aop-hydraulics", {type = "unlock-recipe", recipe = "vgal-ammonia-thruster-oxidizer"})
  end
