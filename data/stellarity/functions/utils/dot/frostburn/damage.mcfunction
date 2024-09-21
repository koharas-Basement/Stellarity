scoreboard players operation #damage stellarity.misc = @s stellarity.dot.frostburn.damage

scoreboard players set #mul stellarity.misc 2

execute if entity @s[type=#minecraft:freeze_hurts_extra_types] run scoreboard players operation #damage stellarity.misc *= #mul stellarity.misc

scoreboard players set #armor_penetration stellarity.misc 0
scoreboard players set #ignore_iframes stellarity.misc 1

scoreboard players reset @s stellarity.dot.frostburn.progress

particle minecraft:soul_fire_flame ~ ~1 ~ .3 .55 .3 0.01 10 force @a[distance=..32]

execute unless entity @s[type=player] run playsound minecraft:entity.player.hurt_freeze neutral @a ~ ~ ~

# Damage cause
tag @s add stellarity.damage.dot.frostburn

function stellarity:utils/damage/start
