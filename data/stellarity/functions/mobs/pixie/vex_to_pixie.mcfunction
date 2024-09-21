# 7% chance to replace a Pixie with an Allay on spawn
scoreboard players set #stellarity.spawn_allay stellarity.misc 0
execute if predicate stellarity:utils/chance/7percent run scoreboard players set #stellarity.spawn_allay stellarity.misc 1

execute if score #stellarity.spawn_allay stellarity.misc matches 1 run function stellarity:mobs/pixie/allay
execute if score #stellarity.spawn_allay stellarity.misc matches 0 run function stellarity:mobs/pixie/spawn

particle flash ~ ~0.25 ~ 0 0 0 0 1 force
