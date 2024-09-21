scoreboard players operation #damage stellarity.misc = @s stellarity.dot.dark_decay.damage

scoreboard players set #armor_penetration stellarity.misc 60

scoreboard players set #ignore_iframes stellarity.misc 1
scoreboard players set #ignore_resistance stellarity.misc 0
scoreboard players set #damage_type stellarity.misc 0
scoreboard players set #damage_effects stellarity.misc 0

scoreboard players reset @s stellarity.dot.dark_decay.progress

particle end_rod ~ ~1 ~ .3 .55 .3 0.01 7 force @a[distance=..32]
particle dust 0.3 0.3 0.3 1 ~ ~1 ~ .3 .55 .3 0.01 7 force @a[distance=..32]

playsound minecraft:entity.ender_eye.death neutral @a ~ ~ ~

# Damage cause
tag @s add stellarity.damage.dot.dark_decay

function stellarity:utils/damage/start
