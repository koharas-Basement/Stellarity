kill @e[type=#stellarity:ammo,limit=3,sort=nearest,tag=!stellarity.aware]

summon minecraft:marker ^ ^ ^ {Tags:["stellarity.prismatic_blast"]}
tp @e[type=marker,limit=1,sort=nearest,tag=stellarity.prismatic_blast,tag=!stellarity.prismatic_blast.pastel,tag=!stellarity.prismatic_blast.monochrome] ^ ^ ^ ~ ~

summon minecraft:marker ^ ^ ^ {Tags:["stellarity.prismatic_blast","stellarity.prismatic_blast.monochrome"]}
tp @e[type=marker,limit=1,sort=nearest,tag=stellarity.prismatic_blast.monochrome] ^ ^ ^ ~25 ~
execute rotated ~25 ~ run function stellarity:items/prismatic_punch/shoot_event/particles

summon minecraft:marker ^ ^ ^ {Tags:["stellarity.prismatic_blast","stellarity.prismatic_blast.pastel"]}
tp @e[type=marker,limit=1,sort=nearest,tag=stellarity.prismatic_blast.pastel] ^ ^ ^ ~-25 ~
execute rotated ~-25 ~ run function stellarity:items/prismatic_punch/shoot_event/particles
