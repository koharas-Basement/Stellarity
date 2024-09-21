summon minecraft:marker ^ ^ ^ {Tags:["stellarity.prismatic_blast","stellarity.marker"]}
tp @e[type=marker,limit=1,sort=nearest,tag=stellarity.prismatic_blast] ^ ^ ^ ~ ~
function stellarity:items/prismatic_punch/shoot_particles

kill @e[type=#kohara:ammo,limit=3,sort=nearest,tag=!stellarity.aware]
