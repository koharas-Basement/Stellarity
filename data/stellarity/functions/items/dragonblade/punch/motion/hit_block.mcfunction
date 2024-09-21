scoreboard players set #hit stellarity.misc 1

function stellarity:items/dragonblade/punch/special_fx/hit_block

execute as @e[type=!#stellarity:invalid_targets,distance=..3,predicate=!stellarity:items/holding_dragonblade,predicate=!stellarity:utils/player/is_sneaking,tag=!stellarity.items.dragonblade.in_punch] run function stellarity:items/dragonblade/punch/damage/splash

function stellarity:items/dragonblade/punch/motion/finish
