execute if score @s stellarity.misc matches 0..8 run particle dust 0.839 0.007 0.439 1.3 ~ ~ ~ 0.13 0.13 0.13 0 8 force
execute if score @s stellarity.misc matches 9..12 run particle dust 0.607 0.309 0.588 1.3 ~ ~ ~ 0.13 0.13 0.13 0 8 force
execute if score @s stellarity.misc matches 13..20 run particle dust 0 0.219 0.658 1.3 ~ ~ ~ 0.13 0.13 0.13 0 8 force

scoreboard players reset @s[scores={stellarity.misc=20..}] stellarity.misc
