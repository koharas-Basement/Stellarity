tag @s add stellarity.items.dragonblade.in_punch

execute if score #hit stellarity.misc matches 0 unless block ^ ^ ^1 #stellarity:non_solid run function stellarity:items/dragonblade/punch/motion/hit_block

scoreboard players add #distance stellarity.misc 1
execute if block ^ ^ ^ #stellarity:liquids run scoreboard players add #distance stellarity.misc 1

execute if score #hit stellarity.misc matches 0 if score #distance stellarity.misc = #max_distance stellarity.misc run function stellarity:items/dragonblade/punch/motion/not_hit_block
execute if score #hit stellarity.misc matches 0 if score #distance stellarity.misc < #max_distance stellarity.misc positioned ^ ^ ^0.1 run function stellarity:items/dragonblade/punch/motion/raycast
