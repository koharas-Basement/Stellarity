scoreboard players set #damage kohara.misc 10

scoreboard players set #mul stellarity.misc 2
execute if entity @s[type=#minecraft:freeze_hurts_extra_types] run scoreboard players operation #damage stellarity.misc *= #mul stellarity.misc

scoreboard players reset @s stellarity.dot.frostburn.progress

particle minecraft:soul_fire_flame ~ ~1 ~ .3 .55 .3 0.01 10 force @a[distance=..32]

execute unless entity @s[type=player] run playsound minecraft:entity.player.hurt_freeze neutral @a ~ ~ ~

execute unless entity @s[type=player] run tag @p add kohara.attacker

function kohara:damage/calculate {armor_penetration:0,damage_boost_efficiency:0,damage_type:"stellarity:dot/frostburn",tag:"stellarity.damage.dot.frostburn"}
