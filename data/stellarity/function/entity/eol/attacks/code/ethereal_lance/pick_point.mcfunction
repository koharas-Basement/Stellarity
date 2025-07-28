# Spawning Pick Point AEC with EoL time tag, bcs different patterns for different fights!
# Remember, EoL ENRAGES during daytime, so it is only natural she would use something a lot harder to dodge
# to make your fight go as miserable as possible
  execute if entity @e[tag=stellarity.eol.daytime] at @p run summon minecraft:area_effect_cloud ~ ~ ~ {Duration: 200,RadiusPerTick:-0.03,Radius:5,Tags:["stellarity.eol.ethereal_lance.pick_point","stellarity.eol.daytime"],custom_particle:{type:"block","block_state":"air"}}
  execute if entity @s[tag=stellarity.eol.nighttime] at @p run summon minecraft:area_effect_cloud ~ ~ ~ {Duration: 200,RadiusPerTick:-0.03,Radius:5,Tags:["stellarity.eol.ethereal_lance.pick_point","stellarity.eol.nighttime"],custom_particle:{type:"block","block_state":"air"}}

execute as @n[type=area_effect_cloud,tag=stellarity.eol.ethereal_lance.pick_point] at @s run function stellarity:entity/eol/attacks/code/ethereal_lance/as_aec
