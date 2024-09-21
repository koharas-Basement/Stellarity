scoreboard players operation @s kohara.shot_bow = @s kohara.detect.shot_bow
scoreboard players operation @s kohara.used_ender_pearl = @s kohara.detect.used_ender_pearl
scoreboard players operation @s kohara.flight_speed = @s kohara.detect.flight_speed

scoreboard players reset @s kohara.detect.shot_bow
scoreboard players reset @s kohara.detect.used_ender_pearl
scoreboard players reset @s kohara.detect.flight_speed

# Respawn detection
# @s, @e and @a will always select a player, dead or alive
# By doing '@e[type=player]', it will only select ones who are alive
# Weird, but it works!
execute if score @s kohara.respawn_detection matches 1.. run function kohara:respawn_detection/on_respawn