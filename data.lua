local function add_tech_effect(tech_name, effect)
    local tech = data.raw.technology[tech_name]
    tech.effects = tech.effects or {}
    table.insert(tech.effects, effect)
  end

  add_tech_effect("cryogenic-plant", {type = "unlock-recipe", recipe = "aop-water-freezing"})

  local function add_crafting_categories(entity_type, entity_name, categories)
    local entity = data.raw[entity_type][entity_name]
    for _,category in pairs(categories) do
      table.insert(entity.crafting_categories, category)
    end
  end

  add_crafting_categories("assembling-machine", "assembling-machine-1", {"advanced-centrifuging", "crafting", "advanced-centrifuging", "crafting", "electromechanics", "quantum-assembling", "crafting", "woodworking", "crafting", "electromechanics", "crafting", "electronics", "electromechanics", "pressing", "electromechanics", "ammunition", "crafting", "woodworking", "organic", "organic", "electromechanics"})
  add_crafting_categories("assembling-machine", "assembling-machine-2", {"advanced-centrifuging", "crafting", "advanced-centrifuging", "crafting", "electromechanics", "quantum-assembling", "crafting", "woodworking", "crafting", "electromechanics", "crafting", "biochemistry", "organic", "woodworking", "organic", "petrochemistry", "organic", "electronics", "electromechanics", "pressing", "electromechanics", "quantum-assembling", "crafting-with-fluid", "advanced-centrifuging", "crafting-with-fluid", "ammunition", "crafting", "synthesis", "crafting-with-fluid", "organic", "electromechanics", "ammunition", "crafting-with-fluid", "biochemistry", "organic", "hand-crafting"})
  add_crafting_categories("assembling-machine", "assembling-machine-3", {"advanced-centrifuging", "crafting", "advanced-centrifuging", "crafting", "electromechanics", "quantum-assembling", "crafting", "woodworking", "crafting", "electromechanics", "crafting", "biochemistry", "organic", "woodworking", "organic", "petrochemistry", "organic", "electronics", "electromechanics", "pressing", "electromechanics", "quantum-assembling", "crafting-with-fluid", "advanced-centrifuging", "crafting-with-fluid", "ammunition", "crafting", "synthesis", "crafting-with-fluid", "organic", "electromechanics", "ammunition", "crafting-with-fluid", "biochemistry", "organic", "hand-crafting"})
  add_crafting_categories("assembling-machine", "chemical-plant", {"hydraulics", "chemistry", "hydraulics", "chemistry", "cryogenics", "petrochemistry", "organic", "chemistry", "petrochemistry", "chemistry", "petrochemistry", "chemistry", "cryogenics", "synthesis", "chemistry", "synthesis", "cryogenics", "chemistry"})
  add_crafting_categories("assembling-machine", "centrifuge", {"advanced-centrifuging", "centrifuging"})
  add_crafting_categories("assembling-machine", "oil-refinery", {"petrochemistry", "oil-processing"})
  add_crafting_categories("assembling-machine", "biochamber", {"biochemistry", "organic", "biochemistry", "organic", "hand-crafting", "biochemistry", "organic", "woodworking", "organic", "woodworking", "organic", "hydraulics", "organic", "petrochemistry", "organic", "chemistry", "petrochemistry", "organic", "petrochemistry", "organic", "organic", "electromechanics", "organic", "electromechanics"})
  add_crafting_categories("assembling-machine", "cryogenic-plant", {"hydraulics", "chemistry", "cryogenics", "petrochemistry", "chemistry", "cryogenics", "synthesis", "cryogenics", "chemistry", "metallurgy", "cryogenics"})
  add_crafting_categories("assembling-machine", "electromagnetic-plant", {"electronics", "electromechanics"})
  add_crafting_categories("assembling-machine", "foundry", {"pressing", "electromechanics", "metallurgy-2-the-return", "metallurgy", "cryogenics"})

local function add_player_crafting_categories(categories)
    local entity = data.raw.character.character
    for _,category in pairs(categories) do
      table.insert(entity.crafting_categories, category)
    end
  end
  
add_player_crafting_categories({"advanced-centrifuging", "crafting", "quantum-assembling", "crafting", "biochemistry", "organic", "hand-crafting", "woodworking", "crafting", "woodworking", "organic", "electromechanics", "crafting", "advanced-centrifuging", "crafting", "electromechanics", "ammunition", "crafting"})

data.raw["assembling-machine"]["crusher"].surface_conditions = nil

data.raw.recipe["automation-science-pack"].categories = { "quantum-assembling", "crafting" }
data.raw.recipe["logistic-science-pack"].categories = { "quantum-assembling", "crafting" }
data.raw.recipe["chemical-science-pack"].categories = { "quantum-assembling", "crafting" }
data.raw.recipe["military-science-pack"].categories = { "quantum-assembling", "crafting" }
data.raw.recipe["production-science-pack"].categories = { "quantum-assembling", "crafting" }
data.raw.recipe["utility-science-pack"].categories = { "quantum-assembling", "crafting" }
data.raw.recipe["space-science-pack"].categories = { "quantum-assembling", "crafting" }
data.raw.recipe["atomic-bomb"].categories = { "advanced-centrifuging", "crafting" }
data.raw.recipe["centrifuge"].categories = { "advanced-centrifuging", "crafting" }
data.raw.recipe["nuclear-reactor"].categories = { "advanced-centrifuging", "crafting" }
data.raw.recipe["uranium-fuel-cell"].categories = { "advanced-centrifuging", "crafting" }
data.raw.recipe["nutrients-from-yumako-mash"].categories = { "biochemistry", "organic" }
data.raw.recipe["nutrients-from-bioflux"].categories = { "biochemistry", "organic" }
data.raw.recipe["copper-bacteria-cultivation"].categories = { "biochemistry", "organic" }
data.raw.recipe["copper-bacteria-cultivation"].auto_recycle = false
data.raw.recipe["iron-bacteria-cultivation"].categories = { "biochemistry", "organic" }
data.raw.recipe["iron-bacteria-cultivation"].auto_recycle = false
data.raw.recipe["bioplastic"].categories = { "biochemistry", "organic" }
data.raw.recipe["biosulfur"].categories = { "biochemistry", "organic" }
data.raw.recipe["bioflux"].categories = { "biochemistry", "organic" }
data.raw.recipe["carbon-fiber"].categories = { "biochemistry", "organic" }
data.raw.recipe["nutrients-from-fish"].categories = { "biochemistry", "organic",  }
data.raw.recipe["nutrients-from-biter-egg"].categories = { "biochemistry", "organic",  }
data.raw.recipe["iron-bacteria"].categories = { "biochemistry", "organic", "hand-crafting" }
data.raw.recipe["copper-bacteria"].categories = { "biochemistry", "organic", "hand-crafting" }
data.raw.recipe["yumako-processing"].categories = { "biochemistry", "organic", "hand-crafting" }
data.raw.recipe["jellynut-processing"].categories = { "biochemistry", "organic", "hand-crafting" }
data.raw.recipe["wooden-chest"].categories = { "woodworking", "crafting" }
data.raw.recipe["small-electric-pole"].categories = { "woodworking", "crafting" }
data.raw.recipe["shotgun"].categories = { "woodworking", "crafting" }
data.raw.recipe["combat-shotgun"].categories = { "woodworking", "crafting" }
data.raw.recipe["agricultural-tower"].categories = { "woodworking", "crafting" }
data.raw.recipe["nutrients-from-spoilage"].categories = { "woodworking", "organic",  }
data.raw.recipe["tree-seed"].categories = { "woodworking", "organic",  }
data.raw.recipe["burnt-spoilage"].categories = { "woodworking", "organic" }
data.raw.recipe["lubricant"].categories = { "hydraulics", "chemistry" }
data.raw.recipe["thruster-fuel"].categories = { "hydraulics", "chemistry" }
data.raw.recipe["thruster-oxidizer"].categories = { "hydraulics", "chemistry" }
data.raw.recipe["advanced-thruster-fuel"].categories = { "hydraulics", "chemistry" }
data.raw.recipe["advanced-thruster-oxidizer"].categories = { "hydraulics", "chemistry" }
data.raw.recipe["holmium-solution"].categories = { "hydraulics", "chemistry" }
data.raw.recipe["ice-melting"].categories = { "hydraulics", "chemistry" }
data.raw.recipe["sulfuric-acid"].categories = { "hydraulics", "chemistry", "cryogenics" }
data.raw.recipe["acid-neutralisation"].categories = { "hydraulics", "chemistry", "cryogenics" }
data.raw.recipe["steam-condensation"].categories = { "hydraulics", "chemistry", "cryogenics" }
data.raw.recipe["biolubricant"].categories = { "hydraulics", "organic" }
data.raw.recipe["heavy-oil-cracking"].categories = { "petrochemistry", "organic", "chemistry" }
data.raw.recipe["light-oil-cracking"].categories = { "petrochemistry", "organic", "chemistry" }
data.raw.recipe["solid-fuel-from-light-oil"].categories = { "petrochemistry", "chemistry" }
data.raw.recipe["solid-fuel-from-heavy-oil"].categories = { "petrochemistry", "chemistry" }
data.raw.recipe["solid-fuel-from-petroleum-gas"].categories = { "petrochemistry", "chemistry" }
data.raw.recipe["flamethrower-ammo"].categories = { "petrochemistry", "chemistry" }
data.raw.recipe["rocket-fuel"].categories = { "petrochemistry", "organic",  }
data.raw.recipe["car"].categories = { "electromechanics", "crafting" }
data.raw.recipe["tank"].categories = { "electromechanics", "crafting" }
data.raw.recipe["spidertron"].categories = { "electromechanics", "crafting" }
data.raw.recipe["logistic-robot"].categories = { "electromechanics", "crafting" }
data.raw.recipe["construction-robot"].categories = { "electromechanics", "crafting" }
data.raw.recipe["locomotive"].categories = { "electromechanics", "crafting" }
data.raw.recipe["cargo-wagon"].categories = { "electromechanics", "crafting" }
data.raw.recipe["fluid-wagon"].categories = { "electromechanics", "crafting" }
data.raw.recipe["defender-capsule"].categories = { "electromechanics", "crafting" }
data.raw.recipe["distractor-capsule"].categories = { "electromechanics", "crafting" }
data.raw.recipe["destroyer-capsule"].categories = { "electromechanics", "crafting" }
data.raw.recipe["solar-panel-equipment"].categories = { "electromechanics", "crafting" }
data.raw.recipe["battery-equipment"].categories = { "electromechanics", "crafting" }
data.raw.recipe["battery-mk2-equipment"].categories = { "electromechanics", "crafting" }
data.raw.recipe["battery-mk3-equipment"].categories = { "electromechanics", "crafting" }
data.raw.recipe["fusion-reactor-equipment"].categories = { "electromechanics", "crafting" }
data.raw.recipe["fission-reactor-equipment"].categories = { "advanced-centrifuging", "crafting", "electromechanics" }
data.raw.recipe["belt-immunity-equipment"].categories = { "electromechanics", "crafting" }
data.raw.recipe["exoskeleton-equipment"].categories = { "electromechanics", "crafting" }
data.raw.recipe["personal-roboport-equipment"].categories = { "electromechanics", "crafting" }
data.raw.recipe["personal-roboport-mk2-equipment"].categories = { "electromechanics", "crafting" }
data.raw.recipe["night-vision-equipment"].categories = { "electromechanics", "crafting" }
data.raw.recipe["toolbelt-equipment"].categories = { "electromechanics", "crafting" }
data.raw.recipe["energy-shield-equipment"].categories = { "electromechanics", "crafting" }
data.raw.recipe["energy-shield-mk2-equipment"].categories = { "electromechanics", "crafting" }
data.raw.recipe["personal-laser-defense-equipment"].categories = { "electromechanics", "crafting" }
data.raw.recipe["discharge-defense-equipment"].categories = { "electromechanics", "crafting" }
data.raw.recipe["roboport"].categories = { "electromechanics", "crafting" }
data.raw.recipe["modular-armor"].categories = { "electromechanics", "crafting" }
data.raw.recipe["power-armor"].categories = { "electromechanics", "crafting" }
data.raw.recipe["power-armor-mk2"].categories = { "electromechanics", "crafting" }
data.raw.recipe["mech-armor"].categories = { "electromechanics", "crafting" }
data.raw.recipe["firearm-magazine"].categories = { "ammunition", "crafting" }
data.raw.recipe["piercing-rounds-magazine"].categories = { "ammunition", "crafting" }
data.raw.recipe["uranium-rounds-magazine"].categories = { "ammunition", "crafting" }
data.raw.recipe["rocket"].categories = { "ammunition", "crafting" }
data.raw.recipe["explosive-rocket"].categories = { "ammunition", "crafting" }
data.raw.recipe["shotgun-shell"].categories = { "ammunition", "crafting" }
data.raw.recipe["piercing-shotgun-shell"].categories = { "ammunition", "crafting" }
data.raw.recipe["cannon-shell"].categories = { "ammunition", "crafting" }
data.raw.recipe["explosive-cannon-shell"].categories = { "ammunition", "crafting" }
data.raw.recipe["uranium-cannon-shell"].categories = { "ammunition", "crafting" }
data.raw.recipe["explosive-uranium-cannon-shell"].categories = { "ammunition", "crafting" }
data.raw.recipe["railgun-ammo"].categories = { "ammunition", "crafting" }
data.raw.recipe["artillery-shell"].categories = { "ammunition", "crafting" }
data.raw.recipe["grenade"].categories = { "ammunition", "crafting" }
data.raw.recipe["cluster-grenade"].categories = { "ammunition", "crafting" }
data.raw.recipe["coal-synthesis"].categories = { "synthesis", "chemistry" }
data.raw.recipe["coal-synthesis"].crafting_machine_tint =
{
    primary = {r = 0.0, g = 0.0, b = 0.0, a = 1.000},
    secondary = {r = 0.0, g = 0.0, b = 0.0, a = 1.000},
    tertiary = {r = 0.0, g = 0.0, b = 0.0, a = 1.000},
    quaternary = {r = 0.0, g = 0.0, b = 0.0, a = 1.000}
}
data.raw.recipe["tungsten-carbide"].categories = { "synthesis", "crafting-with-fluid" }
data.raw.recipe["tungsten-carbide"].crafting_machine_tint =
{
    primary = {r = 0.28, g = 0.24, b = 0.34, a = 1.000},
    secondary = {r = 0.28, g = 0.24, b = 0.34, a = 1.000},
    tertiary = {r = 0.28, g = 0.24, b = 0.34, a = 1.000},
    quaternary = {r = 0.28, g = 0.24, b = 0.34, a = 1.000}
}
data.raw.recipe["carbon"].categories = { "synthesis", "cryogenics", "chemistry" }
data.raw.recipe["carbon"].crafting_machine_tint =
{
    primary = {r = 0.0, g = 0.0, b = 0.0, a = 1.000},
    secondary = {r = 0.0, g = 0.0, b = 0.0, a = 1.000},
    tertiary = {r = 0.0, g = 0.0, b = 0.0, a = 1.000},
    quaternary = {r = 0.0, g = 0.0, b = 0.0, a = 1.000}
}
data.raw.recipe["tree-seed"].surface_conditions = nil
data.raw.item["spoilage"].fuel_category = "aop-spoilage"

data:extend({
    {
        type = "surface-property",
        name = "deep-crustal-stability",
        default_value = 2900,
    },
})
data.raw.surface["space-platform"].surface_properties["deep-crustal-stability"] = 0
data.raw.planet["nauvis"].surface_properties["deep-crustal-stability"] = 5500
data.raw.planet["vulcanus"].surface_properties["deep-crustal-stability"] = 5200
data.raw.planet["fulgora"].surface_properties["deep-crustal-stability"] = 3900
data.raw.planet["gleba"].surface_properties["deep-crustal-stability"] = 5300
data.raw.planet["aquilo"].surface_properties["deep-crustal-stability"] = 2000

require "prototypes.recipe-categories"
require "prototypes.entities"
require "prototypes.recipes"
require "prototypes.technology"