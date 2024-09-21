# This should hopefully fix glithes with some claim plugins
execute if score @s stellarity.misc matches 1 unless block ~ ~ ~ barrel run kill @s

kill @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:barrel",Count:1b}}]

execute if score @s stellarity.misc matches 1..2 run setblock ~ ~ ~ barrel[facing=up,open=false]{Lock:"kohy likes to kiss boys",CustomName:""} replace
execute if score @s stellarity.misc matches 3 run playsound block.barrel.open block @a[distance=0..]
execute if score @s stellarity.misc matches 3.. run setblock ~ ~ ~ barrel[facing=up,open=true]{Lock:"he's a silly little boykisser",CustomName:""} replace
execute if score @s stellarity.misc matches 9..26 run particle lava ~ ~1 ~ 0.2 0 0.2 0 1 normal
execute if score @s stellarity.misc matches 9 run playsound block.fire.extinguish block @a[distance=0..]
execute if score @s stellarity.misc matches 11 run playsound block.fire.extinguish block @a[distance=0..]
execute if score @s stellarity.misc matches 16 run playsound block.fire.extinguish block @a[distance=0..]
execute if score @s stellarity.misc matches 21 run playsound block.fire.extinguish block @a[distance=0..]
execute if score @s stellarity.misc matches 26 run playsound block.fire.extinguish block @a[distance=0..]

execute if score @s stellarity.misc matches 41 positioned ~ ~1 ~ run function stellarity:items/pandoras_barrel/animation/item/spawn
execute if score @s stellarity.misc matches 65 run function stellarity:items/pandoras_barrel/animation/finish

scoreboard players add @s stellarity.misc 1

tp @s ~ ~ ~ ~7.5 ~
particle end_rod ^ ^ ^1
particle end_rod ^ ^ ^-1
