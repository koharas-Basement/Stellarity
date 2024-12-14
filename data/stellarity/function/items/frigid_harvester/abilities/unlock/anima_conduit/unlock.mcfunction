data modify storage stellarity:temp aery_sword.custom_data set from storage stellarity:temp aery_sword.item."minecraft:custom_data"

data modify storage stellarity:temp aery_sword.custom_data."stellarity.aery_sword".abilities append value "anima_conduit"

tellraw @s {"translate":"stellarity.items.weapons.frigid_harvester.ability.tellraw.1","fallback":"--------< %1$s - %2$s >--------","color":"gray","with":[{"translate":"stellarity.items.weapons.frigid_harvester.ability.tellraw.2","fallback":"ABILITY UNLOCK","bold":true,"color":"#EEEEEE"},{"translate":"stellarity.items.weapons.frigid_harvester.ability.anima_conduit","fallback":"Anima Conduit","color":"#4BC6FF"}]}
tellraw @s " "
tellraw @s {"translate":"stellarity.items.weapons.frigid_harvester.ability.anima_conduit.description","fallback":"Souls are crushed down and converted into a healing force","color":"#EEEEEE"}
tellraw @s " "

execute if score #damage_rounded stellarity.misc matches 12 anchored eyes positioned ^ ^ ^2.5 run function stellarity:items/frigid_harvester/effects/ability_absorb

function stellarity:items/frigid_harvester/abilities/unlock/update
