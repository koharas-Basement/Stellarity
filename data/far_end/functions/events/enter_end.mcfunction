execute in minecraft:the_end run tp @s 12 90 0

# Safety precaution :D
execute at @s run fill ~ ~ ~ ~ ~1 ~ air

# Sound effect(s)
execute if score foka.config foka.config.enter_end_effects.sounds matches 1 at @s run playsound block.portal.travel ambient @s ~ ~ ~ 0.14 2

execute if score foka.config foka.config.enter_end_effects.flavor_text matches 1 run function fokastudio:end/flavor_messages

advancement revoke @s only far_end:events/enter_end
