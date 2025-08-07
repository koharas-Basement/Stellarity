tag @s add stellarity.empress_of_light.daytime

data merge entity @s {CustomName:{"translate":"entity.stellarity.empress_of_light","color":"yellow"}}

bossbar set stellarity:empress_of_light color yellow
bossbar set stellarity:empress_of_light name {"translate":"entity.stellarity.empress_of_light","color":"yellow"}

execute if score @s stellarity.empress_of_light.hurt_time matches 10 run tag @s add stellarity.empress_of_light.hurt_10
execute if score @s stellarity.empress_of_light.hurt_time matches 10 as @n[type=armor_stand,tag=stellarity.empress_of_light.armor_stand] at @s run function stellarity:entity/empress_of_light/core/model/hurt
execute if score @s[tag=!stellarity.empress_of_light.hurt_10] stellarity.empress_of_light.hurt_time matches 9 as @n[type=armor_stand,tag=stellarity.empress_of_light.armor_stand] at @s run function stellarity:entity/empress_of_light/core/model/hurt
execute if score @s stellarity.empress_of_light.hurt_time matches 1 as @n[type=armor_stand,tag=stellarity.empress_of_light.armor_stand] at @s run function stellarity:entity/empress_of_light/core/model/daytime
execute if score @s stellarity.empress_of_light.hurt_time matches 1 run tag @s[tag=stellarity.empress_of_light.hurt_10] remove stellarity.empress_of_light.hurt_10

tag @s[tag=stellarity.empress_of_light.nighttime] remove stellarity.empress_of_light.nighttime
