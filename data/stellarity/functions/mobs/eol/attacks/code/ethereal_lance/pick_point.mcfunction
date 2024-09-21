# Spawning Pick Point AEC with EoL time tag, bcs different patterns for different fights!
# Remember, EoL ENRAGES during daytime, so it is only natural she would use something a lot harder to dodge
# to make your fight go as miserable as possible
execute if entity @e[tag=stellarity.eol.daytime] at @p run summon minecraft:area_effect_cloud ~ ~ ~ {Age:0,Duration:1,WaitTime:-2147483648,Tags:["stellarity.eol.ethereal_lance.pick_point","stellarity.eol.daytime"]}
execute if entity @s[tag=stellarity.eol.nighttime] at @p run summon minecraft:area_effect_cloud ~ ~ ~ {Age:0,Duration:1,WaitTime:-2147483648,Tags:["stellarity.eol.ethereal_lance.pick_point","stellarity.eol.nighttime"]}

execute as @e[type=area_effect_cloud,tag=stellarity.eol.ethereal_lance.pick_point,limit=1,sort=nearest] at @s run function stellarity:mobs/eol/attacks/code/ethereal_lance/as_aec
