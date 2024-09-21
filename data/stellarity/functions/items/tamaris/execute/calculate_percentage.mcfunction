execute store result score @s stellarity.items.tamaris.math.health.current run data get entity @s Health 10000
execute store result score @s stellarity.items.tamaris.math.health.max run attribute @s generic.max_health get 100

scoreboard players operation @s stellarity.items.tamaris.math.health.percentage = @s stellarity.items.tamaris.math.health.current
scoreboard players operation @s stellarity.items.tamaris.math.health.percentage /= @s stellarity.items.tamaris.math.health.max

tag @s remove stellarity.items.tamaris.executable
# Wither, Warden, EoL
execute if score @s[type=#stellarity:boss] stellarity.items.tamaris.math.health.percentage matches ..10 run tag @s add stellarity.items.tamaris.executable
execute if score @s[tag=stellarity.boss] stellarity.items.tamaris.math.health.percentage matches ..10 run tag @s add stellarity.items.tamaris.executable
# Other mobs
execute if score @s[type=!#stellarity:boss,tag=!stellarity.boss] stellarity.items.tamaris.math.health.percentage matches ..25 unless entity @s[type=player] run tag @s add stellarity.items.tamaris.executable
# Players (PvP)
execute if score @s[type=player] stellarity.items.tamaris.math.health.percentage matches ..20 run tag @s add stellarity.items.tamaris.executable

#tellraw @a {"score":{"name": "@s","objective": "stellarity.items.tamaris.math.health.percentage"}}
