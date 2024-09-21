loot give @s loot stellarity:treasure_heads

tellraw @s ["\n",{"translate":"stellarity.messages.cmd.get_random_head","fallback":"Gave a random 'Treasure Head', out of a total of 60","color":"#DD6AFF","bold":true},"\n"]
function stellarity:utils/send_command_feedback/off
