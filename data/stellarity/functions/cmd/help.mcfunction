function stellarity:utils/tellraw/help {command:"configuration",description:"Configuration menu for a very limited amount of things. Configs are saved per-world and not globally"}
function stellarity:utils/tellraw/help {command:"configuration.reset_to_defaults",description:"Resets all config options to their default values"}
function stellarity:utils/tellraw/help {command:"ender_dragon.kill",description:"Kills the Ender Dragon. This is different from /kill, as it still procs death animation"}
function stellarity:utils/tellraw/help {command:"fix_markers",description:"Fixes broken markers from Stellarity v2.0d and makes them work with Stellarity v2.1a and above."}
function stellarity:utils/tellraw/help {command:"generate_end_island_features",description:"Forces generation of the Altar of The Accursed."}

tellraw @s " "

tellraw @s {"text":"Click command names to run them","color": "#EEEEEE"}

tellraw @s " "

playsound minecraft:block.chest.open player @s ~ ~ ~ 1 2

function kohara:send_command_feedback/off
