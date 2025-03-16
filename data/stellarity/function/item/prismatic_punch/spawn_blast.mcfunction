summon minecraft:marker ^ ^ ^ {Tags:["stellarity.prismatic_blast","stellarity.marker"]}
tp @n[type=marker,tag=stellarity.prismatic_blast] ^ ^ ^ ~ ~
function stellarity:item/prismatic_punch/shoot_particles

kill @e[type=#kohara:ammo,limit=3,sort=nearest,tag=!stellarity.aware]
