advancement revoke @s only stellarity:events/items/shoot_prismatic_punch

kill @e[type=#kohara:ammo,limit=3,sort=nearest,tag=!stellarity.aware]

execute anchored eyes positioned ^ ^-0.287 ^ run function stellarity:items/prismatic_punch/spawn_blast

playsound minecraft:block.enchantment_table.use player @a[distance=0..] ~ ~ ~ .75 1.25
playsound minecraft:entity.blaze.shoot player @a[distance=0..] ~ ~ ~ 1 1.35
