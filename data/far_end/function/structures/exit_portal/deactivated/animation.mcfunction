execute positioned 0 128 0 run function stellarity:mob/dragon/spawn/summon

function far_end:structures/exit_portal/deactivated/generate

tag @s add fe.in_dragon_fight
tag @s remove fe.deactivated.spawn_dragon

stopsound @a[predicate=stellarity:location/dragons_den/in_biome] music
