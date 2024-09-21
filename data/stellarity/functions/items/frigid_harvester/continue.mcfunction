# Add extra damage
scoreboard players operation #damage stellarity.misc += #damage_extra stellarity.misc

# Rounding
scoreboard players operation #temp stellarity.misc = #damage stellarity.misc
scoreboard players operation #temp stellarity.misc /= #100 stellarity.misc

scoreboard players operation #temp stellarity.misc *= #100 stellarity.misc
scoreboard players operation #temp2 stellarity.misc = #damage stellarity.misc

scoreboard players operation #temp2 stellarity.misc -= #temp stellarity.misc

execute if score #temp2 stellarity.misc matches 0..9 run data modify storage stellarity:temp aery_sword.damage_round set value ""
execute if score #temp2 stellarity.misc matches 10..19 run data modify storage stellarity:temp aery_sword.damage_round set value ".1"
execute if score #temp2 stellarity.misc matches 20..29 run data modify storage stellarity:temp aery_sword.damage_round set value ".2"
execute if score #temp2 stellarity.misc matches 30..39 run data modify storage stellarity:temp aery_sword.damage_round set value ".3"
execute if score #temp2 stellarity.misc matches 40..49 run data modify storage stellarity:temp aery_sword.damage_round set value ".4"
execute if score #temp2 stellarity.misc matches 50..59 run data modify storage stellarity:temp aery_sword.damage_round set value ".5"
execute if score #temp2 stellarity.misc matches 60..69 run data modify storage stellarity:temp aery_sword.damage_round set value ".6"
execute if score #temp2 stellarity.misc matches 70..79 run data modify storage stellarity:temp aery_sword.damage_round set value ".7"
execute if score #temp2 stellarity.misc matches 80..89 run data modify storage stellarity:temp aery_sword.damage_round set value ".8"
execute if score #temp2 stellarity.misc matches 90..99 run data modify storage stellarity:temp aery_sword.damage_round set value ".9"

# Custom model data depending on extra damage
execute if score #damage stellarity.misc matches 0..299 run data modify storage stellarity:temp aery_sword.cmd set value 90001
execute if score #damage stellarity.misc matches 300..599 run data modify storage stellarity:temp aery_sword.cmd set value 90002
execute if score #damage stellarity.misc matches 600..899 run data modify storage stellarity:temp aery_sword.cmd set value 90003
execute if score #damage stellarity.misc matches 900.. run data modify storage stellarity:temp aery_sword.cmd set value 90004

# Visual and sound effects
execute anchored eyes positioned ^ ^ ^2.5 run function stellarity:items/frigid_harvester/effects
particle minecraft:enchant ~ ~1.5 ~ 0 0 0 2 25 force @s
particle minecraft:block ice ~ ~1 ~ 0 0 0 3 15 force @a[distance=..32]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.8 0.8
playsound minecraft:block.glass.break player @s ~ ~ ~ 1 0.66

execute store result storage stellarity:temp aery_sword.damage_int int 0.01 run scoreboard players get #damage stellarity.misc
execute store result storage stellarity:temp aery_sword.damage double 0.01 run scoreboard players get #damage stellarity.misc

item modify entity @s weapon.mainhand stellarity:aery_sword_increase_damage
