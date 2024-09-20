scoreboard players set #continue stellarity.misc 1
execute in minecraft:the_end if entity @e[type=marker,tag=stellarity.altar_of_accursed] run scoreboard players set #continue stellarity.misc 0

execute if score #continue stellarity.misc matches 1 in minecraft:the_end run function stellarity:post_gen/initialize
execute if score #continue stellarity.misc matches 1 positioned 0 255 0 run fill ~3 ~ ~3 ~-3 ~-2 ~-3 air

execute if score #continue stellarity.misc matches 1 run function stellarity:utils/tellraw/command {string:"generate_end_island_features",fallback:"Manually generated End Island features"}
execute if score #continue stellarity.misc matches 0 run function stellarity:utils/tellraw/command {string:"generate_end_island_features.fail",fallback:"Everything is already generated!"}

function kohara:send_command_feedback/off
