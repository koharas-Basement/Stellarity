execute if entity @s[tag=stellarity.boss_drop] run function stellarity:sfx/boss_drop/effects

execute if entity @s[predicate=stellarity:locations/biomes/in_the_hallow] if block ~ ~ ~ #stellarity:allows_consecrating run function stellarity:mechanics/consecration/main
execute if entity @s[tag=stellarity.consecration.in_animation] unless block ~ ~ ~ #stellarity:allows_consecrating run function stellarity:mechanics/consecration/animation/stop
