execute store result bossbar stellarity:crystal_count value run scoreboard players get #crystal_count stellarity.misc
bossbar set stellarity:crystal_count name [{"translate":"stellarity.bossbars.crystals_left","fallback":"Crystals Left: %s","color":"#4C0081","with":[{"score":{"name": "#crystal_count","objective": "stellarity.misc"},"color":"#620081"}]}]

bossbar set stellarity:crystal_count visible true

execute if entity @s[tag=!stellarity.dragon.invulnerable] run function stellarity:mobs/dragon/invulnerability/apply
