scoreboard players reset @s stellarity.items.aery_sword.kills.blaze.count

data modify storage stellarity:temp aery_sword.abilities set from storage stellarity:temp aery_sword.item."stellarity.aery_sword".abilities

data modify storage stellarity:temp aery_sword.abilities append value "frostburn"

tellraw @s {"translate":"stellarity.items.weapons.frigid_harvester.ability.tellraw.1","feedback":"--------< %1$s - %2$s >--------","color":"gray","with":[{"translate":"stellarity.items.weapons.frigid_harvester.ability.tellraw.2","fallback":"ABILITY UNLOCK","bold":true,"color":"#EEEEEE"},{"translate":"stellarity.items.weapons.frigid_harvester.ability.frostburn","fallback":"Frostburn","color":"#4BC6FF"}]}
tellraw @s " "
tellraw @s {"translate":"stellarity.items.weapons.frigid_harvester.ability.frostburn.description","fallback":"Extreme cold burns enemies for extra damage","color":"#EEEEEE"}
tellraw @s " "

function stellarity:items/frigid_harvester/abilities/unlock/update
