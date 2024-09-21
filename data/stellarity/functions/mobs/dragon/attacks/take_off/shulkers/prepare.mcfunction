execute store result score #count kohara.misc if entity @e[type=shulker,distance=..20]

execute unless score #count kohara.misc matches 1.. run summon marker ~ ~ ~ {Tags:["stellarity.marker","stellarity.dragon.shulkers"]}
