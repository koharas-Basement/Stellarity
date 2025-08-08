# misc is for flight time

execute as @n[tag=stellarity.fluffy_hammer.display] rotated as @s run rotate @s ~20 90

scoreboard players add @s stellarity.misc 1
execute if score @s stellarity.misc matches ..40 run function stellarity:item/fluffy_hammer/fly_out
execute if score @s stellarity.misc matches 41.. run function stellarity:item/fluffy_hammer/return with entity @s data."stellarity:owner"

function stellarity:item/fluffy_hammer/damage with entity @s data."stellarity:owner"
