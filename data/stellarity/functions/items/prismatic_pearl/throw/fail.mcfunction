stopsound @a neutral minecraft:entity.ender_pearl.throw
kill @e[type=ender_pearl,limit=1,sort=nearest]

loot give @s[gamemode=!creative] loot stellarity:items/prismatic_pearl

playsound minecraft:block.note_block.bass player @s ~ ~ ~ 0.44 0
playsound minecraft:block.amethyst_block.break player @s ~ ~ ~ 1 1
