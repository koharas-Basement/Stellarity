scoreboard players operation @s stellarity.misc = @e[type=armor_stand,limit=1,sort=nearest,tag=stellarity.pandoras_barrel.armor_stand] stellarity.items.pandoras_barrel.animation

kill @e[type=item,distance=..0.5]

execute if score @s stellarity.misc matches 2..10 run setblock ~ ~ ~ barrel[facing=up,open=false]{Lock:".",CustomName:""} replace
execute if score @s stellarity.misc matches 11..65 run setblock ~ ~ ~ barrel[facing=up,open=true]{Lock:".",CustomName:""} replace
execute if score @s stellarity.misc matches 66..199 run setblock ~ ~ ~ barrel[facing=up,open=false]{Lock:".",CustomName:""} replace
execute if score @s stellarity.misc matches 200.. run setblock ~ ~ ~ air replace
