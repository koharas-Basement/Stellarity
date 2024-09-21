scoreboard players reset #ambient stellarity.misc

tag @s add stellarity.eol.death_animation
tag @s remove stellarity.eol.phase_2
tag @s remove stellarity.eol.can_attack

data merge entity @s {Invulnerable:1b}

function #kohara:status_effects/clear_all

effect give @s invisibility infinite 0 true
effect clear @s regeneration

playsound entity.allay.death hostile @a[distance=0..] ~ ~1 ~ 1.5 1.15
playsound entity.vex.death hostile @a[distance=0..] ~ ~1 ~ 1.5 1.15
playsound minecraft:entity.blaze.death hostile @a[distance=0..] ~ ~ ~ 0.2 0

execute as @a run function stellarity:mobs/dragon/music/reset
