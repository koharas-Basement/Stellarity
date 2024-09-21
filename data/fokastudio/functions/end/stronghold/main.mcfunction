function fokastudio:end/stronghold/loot_tables

execute as @e[type=#fokastudio:end/hostile,predicate=fokastudio:end/locations/in_stronghold,tag=!foka.stronghold_enemy_buffed] unless entity @s[type=creeper] run function fokastudio:end/stronghold/buff_enemies
