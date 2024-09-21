summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["uuid"]}
execute store result score #lcg stellarity.misc run data get entity @e[tag=uuid,limit=1] UUID[0]
execute store result score #temp stellarity.misc run data get entity @e[tag=uuid,limit=1] UUID[1]
execute store result score #temp1 stellarity.misc run data get entity @e[tag=uuid,limit=1] UUID[2]
execute store result score #temp2 stellarity.misc run data get entity @e[tag=uuid,limit=1] UUID[3]
scoreboard players operation #lcg stellarity.misc += #temp stellarity.misc
scoreboard players operation #lcg stellarity.misc += #temp1 stellarity.misc
scoreboard players operation #lcg stellarity.misc += #temp2 stellarity.misc
kill @e[tag=uuid]
