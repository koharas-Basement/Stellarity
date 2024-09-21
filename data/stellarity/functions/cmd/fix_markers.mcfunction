tag @e[type=minecraft:marker,tag=stellarity.altar_of_accursed,tag=!stellarity.marker] add stellarity.marker
tag @e[type=minecraft:marker,tag=stellarity.altar_of_the_light,tag=!stellarity.marker] add stellarity.marker
tag @e[type=minecraft:marker,tag=stellarity.end_portal,tag=!stellarity.marker] add stellarity.marker
tag @e[type=minecraft:marker,tag=fe.structure,tag=fe.exit_portal,tag=!stellarity.marker] add stellarity.marker
tag @e[type=minecraft:marker,tag=stellarity.dragons_den_chest,tag=!stellarity.marker] add stellarity.marker

tellraw @s ["\n",{"translate":"stellarity.messages.cmd.fix_markers","fallback":"Fixed all loaded Stellarity markers","color":"#DD6AFF","bold":false},"\n"]

function kohara:send_command_feedback/off
