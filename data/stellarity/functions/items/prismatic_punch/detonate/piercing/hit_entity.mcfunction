tag @s add stellarity.prismatic_blast.pierced
scoreboard players set #hit stellarity.misc 1

function stellarity:items/prismatic_punch/detonate/piercing/small_booms

scoreboard players add #times_done stellarity.misc 1

scoreboard players set #done stellarity.misc 0
execute if score #times_done stellarity.misc = #count stellarity.misc run scoreboard players set #done stellarity.misc 1

execute if score #done stellarity.misc matches 0 run function stellarity:items/prismatic_punch/detonate/piercing/target_next
