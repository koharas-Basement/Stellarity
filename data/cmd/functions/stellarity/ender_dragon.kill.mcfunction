execute as @e[type=minecraft:ender_dragon] run data merge entity @s {DragonPhase:9}
function far_end:mobs/ender_dragon/phase/transition/killed

tellraw @s ["\n",{"translate":"stellarity.messages.cmd.kill_ender_dragon","fallback":"Successfully slain the Ender Dragon, cheating for the win!","color":"#DD6AFF","bold":true},"\n"]
function stellarity:utils/send_command_feedback/off
