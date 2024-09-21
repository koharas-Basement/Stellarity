effect give @p instant_health 1 0 true
execute as @p at @s anchored eyes run particle heart ^ ^0.6 ^ .13 0.06 .13 0 1 force
execute as @p at @s rotated ~ 0 positioned ^ ^.1 ^ run function stellarity:items/sariel/particles

playsound minecraft:block.note_block.bell player @a ^ ^ ^ 1 1
playsound minecraft:block.note_block.bass player @a ^ ^ ^ .8 1
particle dust_color_transition 0.922 0.922 0.922 1.6 1 0.863 0.239 ^ ^ ^ 0 0 0 0 10 normal

kill @s
