scoreboard players operation #count stellarity.misc = @s stellarity.misc

execute if entity @s[tag=!stellarity.prismatic_blast.monochrome,tag=!stellarity.prismatic_blast.pastel] run function stellarity:items/prismatic_punch/detonate/regular

execute if entity @s[tag=stellarity.prismatic_blast.piercing] run function stellarity:items/prismatic_punch/detonate/piercing/start

execute if entity @s[tag=stellarity.prismatic_blast.monochrome] run function stellarity:items/prismatic_punch/detonate/monochrome
execute if entity @s[tag=stellarity.prismatic_blast.pastel] run function stellarity:items/prismatic_punch/detonate/pastel
