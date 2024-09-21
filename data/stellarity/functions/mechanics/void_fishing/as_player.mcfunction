function stellarity:mechanics/void_fishing/get_hand
function stellarity:mechanics/void_fishing/luck_of_the_sea

execute at @s run function stellarity:mechanics/void_fishing/xp
execute at @s run playsound minecraft:entity.fishing_bobber.retrieve player @a ~ ~ ~ 1 0.5

execute if entity @s[gamemode=!creative,gamemode=!spectator] run function stellarity:mechanics/void_fishing/damage_fishing_rod
