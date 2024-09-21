tag @s add stellarity.eol.daytime

data merge entity @s {CustomName:'{"translate":"stellarity.mobs.empress","fallback":"Empress of Light","color":"yellow"}'}

bossbar set stellarity:eol color yellow
bossbar set stellarity:eol name {"translate":"stellarity.mobs.empress","fallback":"Empress of Light","color":"yellow"}

execute if score @s stellarity.eol.hurt_time matches 9 as @e[type=armor_stand,limit=1,sort=nearest,tag=stellarity.eol.as] at @s run function stellarity:mobs/eol/core/model/hurt
execute if score @s stellarity.eol.hurt_time matches 0 as @e[type=armor_stand,limit=1,sort=nearest,tag=stellarity.eol.as] at @s run function stellarity:mobs/eol/core/model/daytime
