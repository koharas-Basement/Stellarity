data modify storage stellarity:temp aery_sword.abilities set from storage stellarity:temp aery_sword.item."stellarity.aery_sword".abilities

data modify storage stellarity:temp aery_sword.abilities append value "anima_conduit"

tellraw @s {"translate":"stellarity.items.weapons.frigid_harvester.ability.tellraw.1","feedback":"--------< %1$s - %2$s >--------","color":"gray","with":[{"translate":"stellarity.items.weapons.frigid_harvester.ability.tellraw.2","fallback":"ABILITY UNLOCK","bold":true,"color":"#EEEEEE"},{"translate":"stellarity.items.weapons.frigid_harvester.ability.anima_conduit","fallback":"Anima Conduit","color":"#4BC6FF"}]}
tellraw @s " "
tellraw @s {"translate":"stellarity.items.weapons.frigid_harvester.ability.anima_conduit.description","fallback":"Souls are crushed down and converted into a healing force","color":"#EEEEEE"}
tellraw @s " "

execute if score #damage stellarity.misc matches 14 anchored eyes positioned ^ ^ ^2.5 run function stellarity:items/frigid_harvester/effects/ability_absorb 

function stellarity:items/frigid_harvester/abilities/unlock/update
