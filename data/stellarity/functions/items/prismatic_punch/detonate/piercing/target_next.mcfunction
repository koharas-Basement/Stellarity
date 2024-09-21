scoreboard players set #continue stellarity.misc 0
execute if entity @e[type=!#stellarity:invalid_targets_with_player,distance=..9,tag=!stellarity.prismatic_blast.pierced] run scoreboard players set #continue stellarity.misc 1

execute if predicate stellarity:utils/chance/33percent run scoreboard players set #continue stellarity.misc 0

execute if score #continue stellarity.misc matches 1 run scoreboard players set #hit stellarity.misc 0
scoreboard players set #distance stellarity.misc 0

execute if score #continue stellarity.misc matches 1 facing entity @e[type=!#stellarity:invalid_targets_with_player,distance=..9,tag=!stellarity.prismatic_blast.pierced,sort=nearest,limit=1] eyes run function stellarity:items/prismatic_punch/detonate/piercing/ray