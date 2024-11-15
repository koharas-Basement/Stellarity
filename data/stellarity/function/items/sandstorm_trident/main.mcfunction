execute store result score @s stellarity.misc4 run data get entity @s DealtDamage

execute if score @s stellarity.misc4 matches 0 run function stellarity:items/sandstorm_trident/wind_tunnel/trail
execute if score @s[tag=!stellarity.sandstorm_trident.activated] stellarity.misc4 matches 1 run function stellarity:items/sandstorm_trident/wind_tunnel/activate
