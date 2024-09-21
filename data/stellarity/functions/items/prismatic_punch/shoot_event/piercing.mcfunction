kill @e[type=#stellarity:ammo,limit=1,sort=nearest,tag=!stellarity.aware]

summon minecraft:marker ^ ^ ^ {Tags:["stellarity.prismatic_blast","stellarity.prismatic_blast.piercing"]}
tp @e[type=marker,limit=1,sort=nearest,tag=stellarity.prismatic_blast] ^ ^ ^ ~ ~

execute store result score @e[type=marker,limit=1,sort=nearest,tag=stellarity.prismatic_blast] stellarity.misc run data get entity @s SelectedItem.tag.Enchantments.[{id:"minecraft:piercing"}].lvl 1 
