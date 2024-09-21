data modify entity @s[tag=!stellarity.at_portal] Invulnerable set value 0b
tag @s add stellarity.at_portal
tag @s remove stellarity.to_portal

data modify entity @s DragonPhase set value 6

function stellarity:mobs/dragon/heartbeat/main_last_hit

say at portal