summon marker ~ ~ ~ {Tags:["stellarity.eol.ethereal_lance","stellarity.eol.ethereal_lance.no_rotate","stellarity.marker"]}
execute rotated ~ ~ as @e[type=marker,limit=1,sort=nearest,tag=stellarity.eol.ethereal_lance] at @s run tp @s ~ ~ ~ ~ ~

execute unless entity @e[type=vindicator,limit=1,sort=nearest,tag=stellarity.eol.daytime] store result score #ethereal_lance.color stellarity.misc run loot spawn ~ ~ ~ loot kohara:eol/color

execute if score #ethereal_lance.color stellarity.misc matches 0 run tag @e[type=marker,limit=1,sort=nearest,tag=stellarity.eol.ethereal_lance] add stellarity.eol.ethereal_lance.red
execute if score #ethereal_lance.color stellarity.misc matches 1 run tag @e[type=marker,limit=1,sort=nearest,tag=stellarity.eol.ethereal_lance] add stellarity.eol.ethereal_lance.orange
execute if score #ethereal_lance.color stellarity.misc matches 2 run tag @e[type=marker,limit=1,sort=nearest,tag=stellarity.eol.ethereal_lance] add stellarity.eol.ethereal_lance.yellow
execute if score #ethereal_lance.color stellarity.misc matches 3 run tag @e[type=marker,limit=1,sort=nearest,tag=stellarity.eol.ethereal_lance] add stellarity.eol.ethereal_lance.lime
execute if score #ethereal_lance.color stellarity.misc matches 4 run tag @e[type=marker,limit=1,sort=nearest,tag=stellarity.eol.ethereal_lance] add stellarity.eol.ethereal_lance.aqua
execute if score #ethereal_lance.color stellarity.misc matches 5 run tag @e[type=marker,limit=1,sort=nearest,tag=stellarity.eol.ethereal_lance] add stellarity.eol.ethereal_lance.blue
execute if score #ethereal_lance.color stellarity.misc matches 6 run tag @e[type=marker,limit=1,sort=nearest,tag=stellarity.eol.ethereal_lance] add stellarity.eol.ethereal_lance.magenta
execute if score #ethereal_lance.color stellarity.misc matches 7 run tag @e[type=marker,limit=1,sort=nearest,tag=stellarity.eol.ethereal_lance] add stellarity.eol.ethereal_lance.purple

execute if entity @e[type=vindicator,limit=1,sort=nearest,tag=stellarity.eol.daytime] run tag @e[type=marker,limit=1,sort=nearest,tag=stellarity.eol.ethereal_lance] add stellarity.eol.ethereal_lance.gold
