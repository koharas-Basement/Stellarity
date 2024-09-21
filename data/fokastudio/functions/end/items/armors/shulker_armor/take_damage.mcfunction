advancement revoke @s only fokastudio:end/events/take_damage_in_shulker_armor

summon shulker_bullet ~ ~1 ~0.5 {Tags:["foka.defensive_shulker_bullet"],Steps:1}
execute if predicate fokastudio:end/utils/chance/66percent run summon shulker_bullet ~0.5 ~1 ~-0.5 {Tags:["foka.defensive_shulker_bullet"],Steps:1}
execute if predicate fokastudio:end/utils/chance/33percent run summon shulker_bullet ~-0.5 ~1 ~-0.5 {Tags:["foka.defensive_shulker_bullet"],Steps:1}

execute as @e[type=shulker_bullet,tag=foka.defensive_shulker_bullet,sort=nearest,limit=3,distance=..4] run data modify entity @s Owner merge from entity @p UUID
