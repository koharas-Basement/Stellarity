particle lava ~ ~ ~ 0 0 0 0 25 normal
particle totem_of_undying ~ ~ ~ 0 0 0 1 100 normal
particle minecraft:flash ~ ~ ~ 1 1 1 0 5 force
particle minecraft:explosion ~ ~ ~ 1 1 1 0 10 force

playsound minecraft:block.enchantment_table.use master @a[distance=0..] ~ ~ ~ 1 0.7
playsound minecraft:entity.generic.explode master @a[distance=0..] ~ ~ ~ 1 0.9

execute unless score @s stellarity.items.pandoras_barrel.summon_id matches ..-2 unless score @s stellarity.items.pandoras_barrel.summon_id matches 19.. if predicate stellarity:locations/above_4_light_level run playsound minecraft:entity.player.levelup master @a[distance=0..] ~ ~ ~ 1 0.9
execute unless score @s stellarity.items.pandoras_barrel.summon_id matches ..-2 unless score @s stellarity.items.pandoras_barrel.summon_id matches 19.. unless predicate stellarity:locations/above_4_light_level run playsound minecraft:entity.phantom.bite master @a[distance=0..] ~ ~ ~ 1 0.86


execute if score @s stellarity.items.pandoras_barrel.summon_id matches ..-2 run playsound minecraft:entity.phantom.bite master @a[distance=0..] ~ ~ ~ 1 0.86
execute if score @s stellarity.items.pandoras_barrel.summon_id matches 19.. run playsound minecraft:entity.phantom.bite master @a[distance=0..] ~ ~ ~ 1 0.86

function stellarity:items/pandoras_barrel/summons/check
