tag @s add stellarity.eol.prismatic_bolts
tag @s add stellarity.eol.face_player

tp @s ~ ~ ~ ~ 0
execute store result entity @s Rotation[0] float 1 run loot spawn ~ ~ ~ loot stellarity:utils/random_rotation

scoreboard players set @s stellarity.eol.attack_cooldown 55
