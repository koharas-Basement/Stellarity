scoreboard players add @s stellarity.eol.attack_duration 1

execute if score @s stellarity.eol.attack_duration matches 1 run scoreboard players reset #bolts stellarity.misc

execute if score @s stellarity.eol.attack_duration matches 2 run function stellarity:mobs/eol/attacks/code/prismatic_bolts_2/summon
execute if score @s stellarity.eol.attack_duration matches 4 run function stellarity:mobs/eol/attacks/code/prismatic_bolts_2/summon
execute if score @s stellarity.eol.attack_duration matches 6 run function stellarity:mobs/eol/attacks/code/prismatic_bolts_2/summon
execute if score @s stellarity.eol.attack_duration matches 8 run function stellarity:mobs/eol/attacks/code/prismatic_bolts_2/summon
execute if score @s stellarity.eol.attack_duration matches 10 run function stellarity:mobs/eol/attacks/code/prismatic_bolts_2/summon
execute if score @s stellarity.eol.attack_duration matches 12 run function stellarity:mobs/eol/attacks/code/prismatic_bolts_2/summon
execute if score @s stellarity.eol.attack_duration matches 14 run function stellarity:mobs/eol/attacks/code/prismatic_bolts_2/summon
execute if score @s stellarity.eol.attack_duration matches 16 run function stellarity:mobs/eol/attacks/code/prismatic_bolts_2/summon

execute if score @s stellarity.eol.attack_duration matches 24.. run tag @s remove stellarity.eol.face_player
execute if score @s stellarity.eol.attack_duration matches 24.. run tag @s remove stellarity.eol.prismatic_bolts_2
