data modify storage stellarity:temp altar_of_the_accursed.item set from entity @s Item

scoreboard players set #is_stellarity stellarity.misc 0
execute if data storage stellarity:temp altar_of_the_accursed.item.components."minecraft:custom_data"."stellarity:item" run \
scoreboard players set #is_stellarity stellarity.misc 1

execute if score #is_stellarity stellarity.misc matches 0 run function stellarity:mechanic/altar_of_the_accursed/crafting/input/add_type_tag/if_not_stellarity_item
execute if score #is_stellarity stellarity.misc matches 1 run function stellarity:mechanic/altar_of_the_accursed/crafting/input/add_type_tag/if_stellarity_item

execute store result score @s stellarity.altar_of_the_accursed.count run data get storage stellarity:temp altar_of_the_accursed.item.count

function stellarity:mechanic/altar_of_the_accursed/crafting/input/add_type_tag/macro with storage stellarity:temp altar_of_the_accursed.macro

tag @s add stellarity.altar_of_the_accursed.checked_type

particle minecraft:witch ~ ~.5 ~ 0 0 0 10 6 normal
particle minecraft:smoke ~ ~.5 ~ 0 0 0 0.02 6 normal
