advancement revoke @s only stellarity:events/items/attack_with_sariel

scoreboard players reset #sariel.spawn_count stellarity.misc

execute anchored eyes positioned ^ ^ ^3 as @e[type=!#stellarity:invalid_targets_with_player,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s anchored eyes run function stellarity:items/sariel/orb_spawn
