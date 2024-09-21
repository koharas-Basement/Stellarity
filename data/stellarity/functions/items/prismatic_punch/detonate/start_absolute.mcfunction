execute if entity @s[tag=!stellarity.prismatic_blast.multishot] \
	positioned ~ ~-0.4 ~ \
	summon firework_rocket run \
	function stellarity:items/prismatic_punch/detonate/edit_firework 

execute if entity @s[tag=stellarity.prismatic_blast.multishot] \
	positioned ~ ~-0.4 ~ \
	summon firework_rocket run \
	function stellarity:items/prismatic_punch/detonate/edit_firework_multishot

kill @s
