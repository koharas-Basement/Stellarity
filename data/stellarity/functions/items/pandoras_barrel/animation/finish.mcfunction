particle totem_of_undying ~ ~ ~ 0 0 0 1 100 normal
particle minecraft:explosion ~ ~ ~ 1 1 1 0 10 force

playsound minecraft:entity.generic.explode player @a[distance=0..]

function stellarity:items/pandoras_barrel/summons/check

setblock ~ ~ ~ air replace
kill @s
