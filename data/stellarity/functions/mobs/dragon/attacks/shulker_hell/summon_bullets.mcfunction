scoreboard players add #times stellarity.misc 1

summon shulker_bullet ~ ~ ~ {Tags:["stellarity.dragon_bullet"],Steps:1}

execute unless score #times stellarity.misc = #total_times stellarity.misc run function stellarity:mobs/dragon/attacks/shulker_hell/summon_bullets
