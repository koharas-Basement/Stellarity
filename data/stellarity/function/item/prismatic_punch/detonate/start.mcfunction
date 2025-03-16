execute if entity @s[tag=!stellarity.prismatic_blast.multishot] run function stellarity:item/prismatic_punch/detonate/explode
execute if entity @s[tag=stellarity.prismatic_blast.multishot] run function stellarity:item/prismatic_punch/detonate/explode_multishot

execute if score @s stellarity.items.prismatic_punch.piercing matches 0 run kill @s
scoreboard players remove @s stellarity.items.prismatic_punch.piercing 1

scoreboard players set @s[scores={stellarity.misc=..7}] stellarity.items.prismatic_punch.piercing_cooldown 3
scoreboard players set @s[scores={stellarity.misc=8..13}] stellarity.items.prismatic_punch.piercing_cooldown 2
scoreboard players set @s[scores={stellarity.misc=14..}] stellarity.items.prismatic_punch.piercing_cooldown 1

scoreboard players set #exploded stellarity.misc 1
