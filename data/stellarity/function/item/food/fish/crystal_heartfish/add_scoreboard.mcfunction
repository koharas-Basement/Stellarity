scoreboard players add @s stellarity.items.fish.crystal_heartfish.total_consumed 1
function stellarity:item/food/fish/crystal_heartfish/increase_max_hp

execute if score @s stellarity.items.fish.crystal_heartfish.total_consumed matches 10 run advancement grant @s only stellarity:void_fishing/topped_off

summon area_effect_cloud ~ ~ ~ {Tags:["stellarity.items.fish.crystal_heartfish.aec","stellarity.aec"],Duration:21}
