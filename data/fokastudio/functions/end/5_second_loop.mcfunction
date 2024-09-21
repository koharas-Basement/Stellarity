function fokastudio:end/music/loop
function fokastudio:end/floor_crafting/main
function fokastudio:end/stronghold/main

execute as @a[tag=foka.shulker_armor_bonus_active] at @s run function fokastudio:end/items/armors/shulker_armor/reapply_effect

schedule function fokastudio:end/5_second_loop 5s
