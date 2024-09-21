advancement revoke @s only stellarity:events/items/perm_buffs/eat_lucky_carrot

tag @s add stellarity.perm_buffs.lucky_carrot

playsound minecraft:item.trident.riptide_1 player @a ~ ~ ~ 0.66 1.2
playsound minecraft:entity.player.levelup player @a ~ ~ ~ .5 1.2
particle end_rod ~ ~1 ~ 0 0 0 0.07 15
particle firework ~ ~1 ~ 0 0 0 0.07 15
function stellarity:items/perm_buffs/lucky_carrot/apply_buff
