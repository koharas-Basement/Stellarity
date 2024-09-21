execute in minecraft:the_end run function stellarity:post_gen/initialize
execute positioned 0 255 0 run fill ~3 ~ ~3 ~-3 ~-2 ~-3 air

function stellarity:utils/tellraw/command {string:"stellarity.messages.cmd.generate_end_island_features",fallback:"Manually generated End Island features"}

function kohara:send_command_feedback/off
