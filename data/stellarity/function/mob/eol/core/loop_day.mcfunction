tag @s add stellarity.eol.daytime

data merge entity @s {CustomName:'{"translate":"stellarity.mobs.empress","color":"yellow"}'}

bossbar set stellarity:eol color yellow
bossbar set stellarity:eol name {"translate":"stellarity.mobs.empress","color":"yellow"}

execute if score @s stellarity.eol.hurt_time matches 10 run tag @s add stellarity.eol.hurt_10
execute if score @s stellarity.eol.hurt_time matches 10 as @n[type=armor_stand,tag=stellarity.eol.as] at @s run function stellarity:mob/eol/core/model/hurt
execute if score @s[tag=!stellarity.eol.hurt_10] stellarity.eol.hurt_time matches 9 as @n[type=armor_stand,tag=stellarity.eol.as] at @s run function stellarity:mob/eol/core/model/hurt
execute if score @s stellarity.eol.hurt_time matches 1 as @n[type=armor_stand,tag=stellarity.eol.as] at @s run function stellarity:mob/eol/core/model/daytime
execute if score @s stellarity.eol.hurt_time matches 1 run tag @s[tag=stellarity.eol.hurt_10] remove stellarity.eol.hurt_10

tag @s[tag=stellarity.eol.nighttime] remove stellarity.eol.nighttime
