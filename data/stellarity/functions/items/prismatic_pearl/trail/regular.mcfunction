execute if score @s stellarity.misc matches 0..4 run particle dust 0.98 0.243 0.243 1.3 ~ ~ ~ 0.13 0.13 0.13 0 8 force
execute if score @s stellarity.misc matches 5..8 run particle dust 0.98 0.686 0.243 1.3 ~ ~ ~ 0.13 0.13 0.13 0 8 force
execute if score @s stellarity.misc matches 9..12 run particle dust 0.98 0.871 0.243 1.3 ~ ~ ~ 0.13 0.13 0.13 0 8 force
execute if score @s stellarity.misc matches 13..16 run particle dust 0.6 0.98 0.243 1.3 ~ ~ ~ 0.13 0.13 0.13 0 8 force
execute if score @s stellarity.misc matches 17..20 run particle dust 0.243 0.894 0.98 1.3 ~ ~ ~ 0.13 0.13 0.13 0 8 force
execute if score @s stellarity.misc matches 21..24 run particle dust 0.318 0.243 0.98 1.3 ~ ~ ~ 0.13 0.13 0.13 0 8 force
execute if score @s stellarity.misc matches 25..28 run particle dust 0.98 0.243 0.918 1.3 ~ ~ ~ 0.13 0.13 0.13 0 8 force
execute if score @s stellarity.misc matches 29..32 run particle dust 0.647 0.243 0.98 1.3 ~ ~ ~ 0.13 0.13 0.13 0 8 force

scoreboard players reset @s[scores={stellarity.misc=32..}] stellarity.misc
