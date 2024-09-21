scoreboard players set #hit stellarity.misc 1

function stellarity:items/dragonblade/punch/special_fx/hit_block

execute as @e[type=!#kohara:invalid_targets,distance=..2.75,predicate=!stellarity:items/holding_dragonblade,predicate=!kohara:player/is_sneaking,tag=!stellarity.items.dragonblade.in_punch] run function stellarity:items/dragonblade/punch/damage/splash

function stellarity:items/dragonblade/punch/motion/finish
