kill @e[type=#stellarity:ammo,limit=1,sort=nearest,tag=!stellarity.aware]

summon minecraft:marker ^ ^ ^ {Tags:["stellarity.prismatic_blast"]}
tp @e[type=marker,limit=1,sort=nearest,tag=stellarity.prismatic_blast] ^ ^ ^ ~ ~
