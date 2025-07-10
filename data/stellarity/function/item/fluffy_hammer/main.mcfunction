# misc is for flight time

execute as @n[tag=stellarity.entity.fluffy_hammer_display] rotated as @s run rotate @s ~20 90

scoreboard players add @s stellarity.misc 1
execute if score @s stellarity.misc matches ..40 run function stellarity:item/fluffy_hammer/fly_out
execute if score @s stellarity.misc matches 41.. run function stellarity:item/fluffy_hammer/return with entity @s item.components."minecraft:custom_data"

function stellarity:item/fluffy_hammer/damage with entity @s item.components."minecraft:custom_data"
