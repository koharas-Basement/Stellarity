function fokastudio:end/items/ender_insignia/check
function fokastudio:end/items/pandoras_box/loop
function fokastudio:end/items/armors/main
function fokastudio:end/items/mark_arrows

execute as @a[scores={foka.items.dragonblade_cooldown=1..}] run scoreboard players remove @s foka.items.dragonblade_cooldown 1

execute as @a[predicate=fokastudio:end/utils/holding_sharanga] at @s run function fokastudio:end/items/sharanga/loop
execute as @a[predicate=fokastudio:end/utils/holding_unloaded_clockwork_crossbow] run function fokastudio:end/items/clockwork_crossbow/check

execute as @e[type=spectral_arrow,tag=foka.spectral_bolt] at @s rotated as @s run function fokastudio:end/items/sharanga/arrow_loop
