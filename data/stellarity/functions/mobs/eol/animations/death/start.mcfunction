scoreboard players reset #ambient stellarity.misc

tag @s add stellarity.eol.death_animation
tag @s remove stellarity.eol.phase_2
tag @s remove stellarity.eol.can_attack

data merge entity @s {Invulnerable:1b}

function #stellarity:dot/clear_all

effect give @s invisibility infinite 0 true
effect clear @s regeneration
