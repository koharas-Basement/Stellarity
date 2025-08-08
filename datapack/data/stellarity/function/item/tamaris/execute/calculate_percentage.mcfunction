execute store result score @s stellarity.item.tamaris.math.health.current run data get entity @s Health 10000
execute store result score @s stellarity.item.tamaris.math.health.max run attribute @s max_health get 100

scoreboard players operation @s stellarity.item.tamaris.math.health.percentage = @s stellarity.item.tamaris.math.health.current
scoreboard players operation @s stellarity.item.tamaris.math.health.percentage /= @s stellarity.item.tamaris.math.health.max

tag @s remove stellarity.item.tamaris.executable
# Wither, Warden, EoL
  execute if score @s[type=#kohara:boss] stellarity.item.tamaris.math.health.percentage matches ..10 run tag @s add stellarity.item.tamaris.executable
  execute if score @s[tag=kohara.boss] stellarity.item.tamaris.math.health.percentage matches ..10 run tag @s add stellarity.item.tamaris.executable
  # Other mobs
    execute if score @s[type=!#kohara:boss,tag=!kohara.boss] stellarity.item.tamaris.math.health.percentage matches ..25 run tag @s add stellarity.item.tamaris.executable

    #tellraw @a {"score":{"name": "@s","objective": "stellarity.item.tamaris.math.health.percentage"}}
