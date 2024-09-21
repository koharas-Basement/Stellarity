tellraw @s [{"text":"Stellarity","color":"#f100f1"}," ",{"text":"Configuration","color":"white"}]

tellraw @s ["\n",{"text":"1","color":"green"},{"text":" stands for ","color":"white"},{"text":"Enabled","color":"green"},{"text":",\nwhile ","color":"white"},{"text":"0","color":"red"},{"text":" is ","color":"white"},{"text":"Disabled","color":"red"},"\n\n",{"text":"Click config entries' names to edit them","color":"white"}]

# TEMPLATE
#tellraw @s {"text":"","color":"#C076E5","hoverEvent": {"action": "show_text","contents": [{"text": "stellarity.config.X","color":"#DFDFDF"},"\n",{"text": "Click to edit","color":"#CEADD6"},"\n",{"text":"Default: ","color":"#C8ADD6"},{"text":"Enabled/Disabled","color":"#91FF7B/#FF7B7B"}]},"clickEvent": {"action": "suggest_command","value": "/scoreboard players set #stellarity.config stellarity.config.X "}}
#tellraw @s {"text":"","color":"#C8ADD6"}
#execute if score #stellarity.config stellarity.config.X matches 1 run tellraw @s {"text":"Enabled","color":"#91FF7B"}
#execute if score #stellarity.config stellarity.config.X matches 0 run tellraw @s {"text":"Disabled","color":"#FF7B7B"}
#tellraw @s " "

tellraw @s {"text":"Join Message","color":"#C076E5","hoverEvent": {"action": "show_text","contents": [{"text": "stellarity.config.join_message","color":"#DFDFDF"},"\n",{"text": "Click to edit","color":"#CEADD6"},"\n",{"text":"Default: ","color":"#C8ADD6"},{"text":"Enabled","color":"#91FF7B"}]},"clickEvent": {"action": "suggest_command","value": "/scoreboard players set #stellarity.config stellarity.config.join_message "}}
tellraw @s [{"text":"Whether to send a short message about Stellarity being loaded properly upon entering this world","color":"#C8ADD6"}]
execute if score #stellarity.config stellarity.config.join_message matches 1 run tellraw @s {"text":"Enabled","color":"#91FF7B"}
execute if score #stellarity.config stellarity.config.join_message matches 0 run tellraw @s {"text":"Disabled","color":"#FF7B7B"}
tellraw @s " "

tellraw @s {"text":"Always Generate Egg","color":"#C076E5","hoverEvent": {"action": "show_text","contents": [{"text": "stellarity.config.always_generate_egg","color":"#DFDFDF"},"\n",{"text": "Click to edit","color":"#CEADD6"},"\n",{"text":"Default: ","color":"#C8ADD6"},{"text":"Disabled","color":"#FF7B7B"}]},"clickEvent": {"action": "suggest_command","value": "/scoreboard players set #stellarity.config stellarity.config.always_generate_egg "}}
tellraw @s {"text":"Whether to generate Dragon Egg only once upon first kill, or to always generate it regardless","color":"#C8ADD6"}
execute if score #stellarity.config stellarity.config.always_generate_egg matches 1 run tellraw @s {"text":"Enabled","color":"#91FF7B"}
execute if score #stellarity.config stellarity.config.always_generate_egg matches 0 run tellraw @s {"text":"Disabled","color":"#FF7B7B"}
tellraw @s " "

tellraw @s {"text":"Dragon Max Health","color":"#C076E5","hoverEvent": {"action": "show_text","contents": [{"text": "stellarity.config.dragon_health","color":"#DFDFDF"},"\n",{"text": "Click to edit","color":"#CEADD6"},"\n",{"text":"Default: ","color":"#C8ADD6"},{"text":"300","color":"#EEEEEE"}]},"clickEvent": {"action": "suggest_command","value": "/scoreboard players set #stellarity.config stellarity.config.dragon_health "}}
tellraw @s {"text":"Changes maximum health of the Ender Dragon","color":"#C8ADD6"}
tellraw @s [{"text":"Current Value: ","color": "#EEEEEE"},{"score":{"name": "#stellarity.config","objective": "stellarity.config.dragon_health"},"color": "#EEEEEE"}]
tellraw @s " "

tellraw @s " "
tellraw @s " "
tellraw @s {"text":"Scroll to the top for a short tutorial on how to configurate some parts of this Datapack!","color":"#E0ACE9"}
