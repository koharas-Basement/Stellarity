execute if entity @s[tag=!stellarity.prismatic_blast.multishot] \
	positioned ~ ~-0.4 ~ \
	summon firework_rocket run \
	function stellarity:items/prismatic_punch/detonate/edit_firework 

execute if entity @s[tag=stellarity.prismatic_blast.multishot] \
	positioned ~ ~-0.4 ~ \
	summon firework_rocket run \
	function stellarity:items/prismatic_punch/detonate/edit_firework_multishot

execute if score @s stellarity.items.prismatic_punch.piercing matches 0 run kill @s
scoreboard players remove @s stellarity.items.prismatic_punch.piercing 1

scoreboard players set @s[scores={stellarity.misc=..7}] stellarity.items.prismatic_punch.piercing_cooldown 7
scoreboard players set @s[scores={stellarity.misc=8..13}] stellarity.items.prismatic_punch.piercing_cooldown 4
scoreboard players set @s[scores={stellarity.misc=14..23}] stellarity.items.prismatic_punch.piercing_cooldown 2
scoreboard players set @s[scores={stellarity.misc=24..}] stellarity.items.prismatic_punch.piercing_cooldown 1
