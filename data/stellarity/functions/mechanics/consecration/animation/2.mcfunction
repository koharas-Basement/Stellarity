execute store result score #count stellarity.misc run data get entity @s Item.Count 1
kill @s

function stellarity:mechanics/consecration/checks

particle minecraft:end_rod ~ ~.3 ~ 0 0 0 0.05 23
particle minecraft:firework ~ ~.3 ~ 0 0 0 0.05 23

playsound minecraft:item.trident.return block @a[distance=0..] ~ ~ ~ 1 2

advancement grant @p only stellarity:exploration/transmute_item
