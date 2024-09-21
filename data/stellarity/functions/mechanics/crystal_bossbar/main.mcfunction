execute store result score stellarity.misc stellarity.mechanics.crystal_count if entity @e[type=end_crystal,predicate=stellarity:locations/in_dragons_den,tag=!fe.respawn_crystal]
execute store result bossbar stellarity:crystal_count value run scoreboard players get stellarity.misc stellarity.mechanics.crystal_count
bossbar set stellarity:crystal_count name [{"translate":"stellarity.bossbars.crystals_left","fallback":"Crystals Left:","color":"#4C0081"}," ",{"score":{"name": "stellarity.misc","objective": "stellarity.mechanics.crystal_count"},"color":"#620081"}]

# Visibility helpers
execute if entity @e[type=end_crystal,predicate=stellarity:locations/in_dragons_den,tag=!fe.respawn_crystal] run bossbar set stellarity:crystal_count visible true
execute unless entity @e[type=end_crystal,predicate=stellarity:locations/in_dragons_den,tag=!fe.respawn_crystal] run bossbar set stellarity:crystal_count visible false
