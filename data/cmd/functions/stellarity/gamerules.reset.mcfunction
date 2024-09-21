execute in minecraft:the_end run function stellarity:mechanics/gamerules/reset

tellraw @s ["\n",{"translate":"stellarity.messages.cmd.reset_gamerules","fallback":"The End is calming down","color":"#DD6AFF","bold":true},"\n"]
function stellarity:utils/send_command_feedback/off
