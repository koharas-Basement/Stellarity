scoreboard players reset @s stellarity.status_effects.jinx.particle

execute positioned ~ ~1.3 ~ run function kohara:particles/spawn_particle {speed:30,billboard:center,item:magenta_dye,despawn_value:33,state:spread,spread_initial:1,spread_radius:1.7,custommodeldata:90000,id:jinx}

execute if predicate kohara:chance/50percent run particle minecraft:end_rod ~ ~1.2 ~ 0 0 0 0.05 1
