execute if entity @s[type=enderman] run function stellarity:mobs/stat_buff/enderman
execute if entity @s[type=phantom] run function stellarity:mobs/stat_buff/phantom
execute if entity @s[type=silverfish] run function stellarity:mobs/voided_silverfish/convert
execute if entity @s[type=slime,nbt=!{Size:0}] run function stellarity:mobs/voided_slime/convert
execute if entity @s[type=skeleton] run function stellarity:mobs/voided_skeleton/convert
execute if entity @s[type=zombie] run function stellarity:mobs/voided_zombie/convert
execute if entity @s[type=zombified_piglin,tag=!stellarity.aware,predicate=stellarity:locations/biomes/in_flesh_tundra] run function stellarity:mobs/flesh_piglin/convert

tag @s add stellarity.buffed
