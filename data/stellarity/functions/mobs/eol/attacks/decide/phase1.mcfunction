tag @s remove stellarity.eol.attack_ready

scoreboard players add @s stellarity.eol.attack_cycle 1
execute if score @s stellarity.eol.attack_cycle matches 20 run scoreboard players set @s stellarity.eol.attack_cycle 1

scoreboard players reset @s stellarity.eol.attack_duration


execute if score @s stellarity.eol.attack_cycle matches 1 at @p run function stellarity:mobs/eol/attacks/teleport
execute if score @s stellarity.eol.attack_cycle matches 2 run function stellarity:mobs/eol/attacks/prismatic_bolts
execute if score @s stellarity.eol.attack_cycle matches 3 at @p run function stellarity:mobs/eol/attacks/teleport
execute if score @s stellarity.eol.attack_cycle matches 4 run function stellarity:mobs/eol/attacks/dash
execute if score @s stellarity.eol.attack_cycle matches 5 at @p run function stellarity:mobs/eol/attacks/teleport
execute if score @s[tag=stellarity.eol.daytime] stellarity.eol.attack_cycle matches 6 run function stellarity:mobs/eol/attacks/prismatic_bolts_2
execute if score @s stellarity.eol.attack_cycle matches 7 run function stellarity:mobs/eol/attacks/ethereal_lance
execute if score @s stellarity.eol.attack_cycle matches 8 run function stellarity:mobs/eol/attacks/prismatic_bolts
execute if score @s stellarity.eol.attack_cycle matches 9 at @p run function stellarity:mobs/eol/attacks/teleport
execute if score @s stellarity.eol.attack_cycle matches 10 run function stellarity:mobs/eol/attacks/dash
execute if score @s stellarity.eol.attack_cycle matches 11 at @p run function stellarity:mobs/eol/attacks/teleport
execute if score @s stellarity.eol.attack_cycle matches 12 run function stellarity:mobs/eol/attacks/ethereal_lance
execute if score @s stellarity.eol.attack_cycle matches 13 at @p run function stellarity:mobs/eol/attacks/teleport
execute if score @s stellarity.eol.attack_cycle matches 14 run function stellarity:mobs/eol/attacks/dash
execute if score @s stellarity.eol.attack_cycle matches 15 at @p run function stellarity:mobs/eol/attacks/teleport
execute if score @s stellarity.eol.attack_cycle matches 16 run function stellarity:mobs/eol/attacks/prismatic_bolts_2
execute if score @s stellarity.eol.attack_cycle matches 17 run function stellarity:mobs/eol/attacks/prismatic_bolts
execute if score @s stellarity.eol.attack_cycle matches 18 at @p run function stellarity:mobs/eol/attacks/teleport
execute if score @s stellarity.eol.attack_cycle matches 19 run function stellarity:mobs/eol/attacks/dash
