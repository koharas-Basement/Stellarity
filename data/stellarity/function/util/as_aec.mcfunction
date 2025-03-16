execute if entity @s[tag=!stellarity.aec,tag=!stellarity.aware] \
    unless predicate {"condition": "minecraft:location_check","predicate":{"structures": "#stellarity:prevents_lingering_potion_buff"}} \
    if data entity @s potion_contents.potion \
    if data entity @s {Particle:{"type":"minecraft:entity_effect"}} \
    run function stellarity:mechanic/lingering_potion_buff

execute if entity @s[tag=stellarity.aec] run function stellarity:util/as_aec_stellarity_specific
