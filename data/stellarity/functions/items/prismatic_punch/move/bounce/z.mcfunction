### 180 - Rotation[0]

scoreboard players set #temp stellarity.misc 18000
execute store result score #temp1 stellarity.misc run data get entity @s Rotation[0] 100.0
execute store result entity @s Rotation[0] float 0.01 run scoreboard players operation #temp stellarity.misc -= #temp1 stellarity.misc
