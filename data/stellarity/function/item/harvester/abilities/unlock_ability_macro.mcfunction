data modify storage stellarity:temp aery_sword.custom_data set from storage stellarity:temp aery_sword.item."minecraft:custom_data"

$data modify storage stellarity:temp aery_sword.custom_data."stellarity.aery_sword".abilities append value "$(ability)"
$advancement grant @s only stellarity:exploration/harvester/abilities/$(ability)
$advancement grant @s only stellarity:exploration/harvester/unlock_all_abilities $(ability)

$scoreboard players reset @s stellarity.items.aery_sword.progress.$(ability)

advancement grant @s only stellarity:event/toasts/harvester_unlock_ability

execute if score #damage_rounded stellarity.misc matches 12 anchored eyes positioned ^ ^ ^2.5 run function stellarity:item/harvester/effects/ability_absorb

function stellarity:item/harvester/abilities/update_description
