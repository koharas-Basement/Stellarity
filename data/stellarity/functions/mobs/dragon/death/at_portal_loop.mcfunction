tag @s add stellarity.at_portal
tag @s remove stellarity.to_portal

data merge entity @s {DragonPhase:6,Invulnerable:0b}

execute rotated as @s run tp @s 0 67 0 ~ ~

attribute @s generic.armor modifier add 76472040-d722-4b07-9375-f657cdeaee65 "stellarity.last_hit" -1 multiply
attribute @s generic.armor_toughness modifier add 76472040-d722-4b07-9375-f657cdeaee65 "stellarity.last_hit" -1 multiply

function stellarity:mobs/dragon/heartbeat/main_last_hit
