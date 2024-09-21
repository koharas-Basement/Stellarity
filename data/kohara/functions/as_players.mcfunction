scoreboard players operation @s kohara.shot_bow = @s kohara.detect.shot_bow
scoreboard players operation @s kohara.used_ender_pearl = @s kohara.detect.used_ender_pearl
scoreboard players operation @s kohara.flight_speed = @s kohara.detect.flight_speed
scoreboard players operation @s kohara.thrown_trident = @s kohara.detect.thrown_trident
scoreboard players operation @s kohara.used_firework = @s kohara.detect.used_firework

scoreboard players reset @s kohara.detect.shot_bow
scoreboard players reset @s kohara.detect.used_ender_pearl
scoreboard players reset @s kohara.detect.flight_speed
scoreboard players reset @s kohara.detect.thrown_trident
scoreboard players reset @s kohara.detect.used_firework

# Respawn detection
execute if score @s kohara.respawn_detection matches 1.. run function kohara:respawn_detection/on_respawn
