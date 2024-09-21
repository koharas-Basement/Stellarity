tag @s add stellarity.eol.nighttime

data merge entity @s {CustomName:'{"translate":"stellarity.mobs.empress","fallback":"Empress of Light","color":"light_purple"}'}

bossbar set stellarity:eol color pink
bossbar set stellarity:eol name [{"translate":"stellarity.mobs.empress","fallback":"Empress of Light","color":"light_purple"}]

execute if score @s stellarity.eol.hurt_time matches 10 run tag @s add stellarity.eol.hurt_10
execute if score @s stellarity.eol.hurt_time matches 10 as @e[type=armor_stand,limit=1,sort=nearest,tag=stellarity.eol.as] at @s run function stellarity:mobs/eol/core/model/hurt
execute if score @s[tag=!stellarity.eol.hurt_10] stellarity.eol.hurt_time matches 9 as @e[type=armor_stand,limit=1,sort=nearest,tag=stellarity.eol.as] at @s run function stellarity:mobs/eol/core/model/hurt
execute if score @s stellarity.eol.hurt_time matches 1 as @e[type=armor_stand,limit=1,sort=nearest,tag=stellarity.eol.as] at @s run function stellarity:mobs/eol/core/model/normal
execute if score @s stellarity.eol.hurt_time matches 1 run tag @s[tag=stellarity.eol.hurt_10] remove stellarity.eol.hurt_10

tag @s[tag=stellarity.eol.full_daytime] remove stellarity.eol.full_daytime
tag @s[tag=stellarity.eol.daytime] remove stellarity.eol.daytime
