scoreboard players operation #damage kohara.misc = @s stellarity.dot.dark_decay.damage

scoreboard players add @s[scores={stellarity.dot.dark_decay.stacks=0..3}] stellarity.dot.dark_decay.stacks 1
execute unless score @s stellarity.dot.dark_decay.stacks matches -2147483648..2147483647 run scoreboard players set @s stellarity.dot.dark_decay.stacks 0

# +25% decay damage per tick, for up to double damage
scoreboard players set #extra stellarity.misc 25
scoreboard players set #100 stellarity.misc 100
scoreboard players set #2 stellarity.misc 2
scoreboard players operation #extra stellarity.misc *= @s stellarity.dot.dark_decay.stacks
scoreboard players operation #extra stellarity.misc += #100 stellarity.misc
scoreboard players operation #damage kohara.misc *= #extra stellarity.misc
scoreboard players operation #damage kohara.misc /= #100 stellarity.misc

#scoreboard players operation #damage kohara.misc += #extra stellarity.misc

# Extra x2 multiplier if using Curse of Vanishing
execute if entity @s[tag=stellarity.dark_decay.curse] run scoreboard players operation #damage kohara.misc *= #2 stellarity.misc

scoreboard players reset @s stellarity.dot.dark_decay.progress

particle end_rod ~ ~1 ~ .3 .55 .3 0.01 7 force @a[distance=..32]
particle dust 0.3 0.3 0.3 1 ~ ~1 ~ .3 .55 .3 0.01 7 force @a[distance=..32]

playsound minecraft:entity.ender_eye.death neutral @a ~ ~ ~

tag @p add kohara.attacker

function kohara:damage/calculate {armor_penetration:60,damage_boost_efficiency:0,damage_type:"stellarity:dot/dark_decay",tag:"stellarity.damage.dot.dark_decay"}
