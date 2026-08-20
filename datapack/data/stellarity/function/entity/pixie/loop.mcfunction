# Ambient sound timer
  scoreboard players add @s stellarity.misc 1
  execute if score @s stellarity.misc matches 75 run function stellarity:entity/pixie/sounds/ambient

execute store result score @s stellarity.misc2 run data get entity @s HurtTime
execute if score @s stellarity.misc2 matches 9.. run function stellarity:entity/pixie/sounds/hurt

execute if score @s stellarity.misc2 matches 1.. run function stellarity:entity/pixie/particles/hurt
execute if score @s stellarity.misc2 matches 0 run function stellarity:entity/pixie/particles/regular

execute rotated as @s run tp @n[type=item_display,tag=stellarity.util.animated_java.pixie.root,distance=..2] ~ ~ ~ ~ 0

effect clear @s glowing
