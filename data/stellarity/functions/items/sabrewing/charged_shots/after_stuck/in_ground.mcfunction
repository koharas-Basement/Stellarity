kill @e[type=marker,distance=..0.05,tag=stellarity.items.sabrewing.marker]

scoreboard players add @s stellarity.misc 1

execute if entity @s[tag=stellarity.items.sabrewing.1] run function stellarity:items/sabrewing/charged_shots/after_stuck/1
execute if score @s[tag=stellarity.items.sabrewing.2] stellarity.misc matches 10 run function stellarity:items/sabrewing/charged_shots/after_stuck/2
execute if score @s[tag=stellarity.items.sabrewing.3] stellarity.misc matches 10 run function stellarity:items/sabrewing/charged_shots/after_stuck/3
