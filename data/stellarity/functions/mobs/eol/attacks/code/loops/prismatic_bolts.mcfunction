scoreboard players add @s stellarity.eol.attack_duration 1

execute if score @s stellarity.eol.attack_duration matches ..48 run tp @s ^ ^ ^.22
execute if score @s stellarity.eol.attack_duration matches 49.. run tp @s ^ ^ ^.07

execute if score @s stellarity.eol.attack_duration matches 6..42 run scoreboard players add #bolts.timer stellarity.misc 1
execute if score #bolts.timer stellarity.misc matches 4 as @e[type=armor_stand,limit=1,sort=nearest,tag=stellarity.eol.as] at @s rotated ~ 0 positioned ^-.3 ^1 ^0.3 run function stellarity:mobs/eol/attacks/code/prismatic_bolts/summon
execute if score #bolts.timer stellarity.misc matches 4 run scoreboard players reset #bolts.timer


execute if score @s stellarity.eol.attack_duration matches 54.. run tag @s remove stellarity.eol.face_player
execute if score @s stellarity.eol.attack_duration matches 54.. run tag @s remove stellarity.eol.prismatic_bolts
execute if score @s stellarity.eol.attack_duration matches 54.. run scoreboard players reset #bolts.timer
