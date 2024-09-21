execute store result score foka.misc foka.mechanics.crystal_count if entity @e[type=end_crystal,predicate=fokastudio:end/locations/in_dragons_den,tag=!fe.respawn_crystal,nbt={ShowBottom:1b}]
execute store result bossbar fokastudio:end/crystal_count value run scoreboard players get foka.misc foka.mechanics.crystal_count
bossbar set fokastudio:end/crystal_count name [{"text":"Crystals Left: ","color":"#4C0081"},{"score":{"name": "foka.misc","objective": "foka.mechanics.crystal_count"},"color":"#620081"}]

# Visibility helpers
# For true visibility, look into the files with fe:ender_dragon bossbar references,
# as both bossbars are showing using same functions
execute if entity @e[type=end_crystal,predicate=fokastudio:end/locations/in_dragons_den,tag=!fe.respawn_crystal,nbt={ShowBottom:1b}] run bossbar set fokastudio:end/crystal_count visible true
execute unless entity @e[type=end_crystal,predicate=fokastudio:end/locations/in_dragons_den,tag=!fe.respawn_crystal,nbt={ShowBottom:1b}] run bossbar set fokastudio:end/crystal_count visible false
