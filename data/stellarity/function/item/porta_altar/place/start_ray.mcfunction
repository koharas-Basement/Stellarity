tag @s add stellarity.misc
scoreboard players set #hit stellarity.misc 0
scoreboard players set #distance stellarity.misc 0
execute anchored eyes positioned ^ ^ ^ rotated as @s run function stellarity:item/porta_altar/place/ray
tag @s remove stellarity.misc
