effect clear @s levitation
effect clear @s slow_falling

execute if entity @s[predicate=kohara:player/is_sneaking] at @s unless block ~ ~ ~ #kohara:liquids run function stellarity:items/soaring_insignia/checks_sneaking
execute if entity @s[predicate=!kohara:player/is_sneaking,tag=stellarity.insignia.flying] run effect give @s levitation infinite 255 true

execute if data entity @s[tag=stellarity.insignia.flying] {OnGround:1b} run function stellarity:items/soaring_insignia/stop_flight
execute at @s if block ~ ~ ~ #kohara:liquids run function stellarity:items/soaring_insignia/stop_flight
