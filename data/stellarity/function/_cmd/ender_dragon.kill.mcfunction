execute as @e[type=minecraft:ender_dragon] run data merge entity @s {DragonPhase:9}
tag @e[type=minecraft:marker,tag=fe.structure,tag=fe.exit_portal,tag=!fe.activated] add fe.activated

function stellarity:utils/tellraw/command {string:"kill_ender_dragon",fallback:"Killed the Ender Dragon"}

function kohara:send_command_feedback/off
