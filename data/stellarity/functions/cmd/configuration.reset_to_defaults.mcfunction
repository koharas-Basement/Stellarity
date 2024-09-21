scoreboard players set #stellarity.config stellarity.config.join_message 1
scoreboard players set #stellarity.config stellarity.config.always_generate_egg 0
scoreboard players set #stellarity.config stellarity.config.dragon_health 300

tellraw @s ["\n",{"translate":"stellarity.messages.cmd.reset_config_to_default","fallback":"All configs were reset to default!","color":"#DD6AFF","bold":true},"\n"]

function kohara:send_command_feedback/off
