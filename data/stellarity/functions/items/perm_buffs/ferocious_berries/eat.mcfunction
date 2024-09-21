advancement revoke @s only stellarity:events/items/perm_buffs/eat_ferocious_berries

tag @s add stellarity.perm_buffs.ferocious_berries

playsound minecraft:item.trident.riptide_1 player @a ~ ~ ~ 0.66 1.2
playsound minecraft:entity.ender_dragon.growl player @a ~ ~ ~ .25 2
particle end_rod ~ ~1 ~ 0 0 0 0.07 15
particle firework ~ ~1 ~ 0 0 0 0.07 15
function stellarity:items/perm_buffs/ferocious_berries/apply_buff
