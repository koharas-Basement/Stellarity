scoreboard players reset @s stellarity.items.aery_sword.kills.wither_skeleton.count

data modify storage stellarity:temp aery_sword.custom_data set from storage stellarity:temp aery_sword.item."minecraft:custom_data"

data modify storage stellarity:temp aery_sword.custom_data."stellarity.aery_sword".abilities append value "embrittlement"

tellraw @s {"translate":"stellarity.items.weapons.frigid_harvester.ability.tellraw.1","fallback":"--------< %1$s - %2$s >--------","color":"gray","with":[{"translate":"stellarity.items.weapons.frigid_harvester.ability.tellraw.2","fallback":"ABILITY UNLOCK","bold":true,"color":"#EEEEEE"},{"translate":"stellarity.items.weapons.frigid_harvester.ability.embrittlement","fallback":"Embrittlement","color":"#4BC6FF"}]}
tellraw @s " "
tellraw @s {"translate":"stellarity.items.weapons.frigid_harvester.ability.embrittlement.description","fallback":"Hit enemies become brittle and take extra frostbite damage from all sources","color":"#EEEEEE"}
tellraw @s " "

function stellarity:items/frigid_harvester/abilities/unlock/update
