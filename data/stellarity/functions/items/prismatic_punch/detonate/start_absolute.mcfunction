execute if entity @s[tag=!stellarity.prismatic_blast.multishot] summon firework_rocket run function stellarity:items/prismatic_punch/detonate/edit_firework 
execute if entity @s[tag=stellarity.prismatic_blast.multishot] summon firework_rocket run function stellarity:items/prismatic_punch/detonate/edit_firework_multishot

scoreboard players set #exploded stellarity.misc 1

kill @s
