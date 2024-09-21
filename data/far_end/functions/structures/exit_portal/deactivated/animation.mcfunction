execute positioned 0 128 0 run function stellarity:mobs/dragon/spawn/summon

function far_end:structures/exit_portal/deactivated/generate

tag @s add fe.in_dragon_fight
tag @s remove fe.deactivated.spawn_dragon

stopsound @a[predicate=stellarity:locations/in_dragons_den] music
