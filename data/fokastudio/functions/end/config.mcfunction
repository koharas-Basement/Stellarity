tellraw @s [{"text":"F","color":"#f100f1"},{"text":"o","color":"#eb00eb"},{"text":"k","color":"#e600e6"},{"text":"a","color":"#e000e0"},{"text":"S","color":"#db00db"},{"text":"t","color":"#d600d6"},{"text":"u","color":"#d000d0"},{"text":"d","color":"#cb00cb"},{"text":"i","color":"#c500c5"},{"text":"o","color":"#c000c0"},{"text":"'","color":"#bb00bb"},{"text":"s ","color":"#b500b5"},{"text":"E","color":"#b000b0"},{"text":"n","color":"#aa00aa"},{"text":"d","color":"#a500a5"},{"text":"e","color":"#a000a0"},{"text":"r ","color":"#9a009a"},{"text":"E","color":"#950095"},{"text":"x","color":"#8f008f"},{"text":"p","color":"#8a008a"},{"text":"a","color":"#850085"},{"text":"n","color":"#7f007f"},{"text":"s","color":"#7a007a"},{"text":"i","color":"#740074"},{"text":"o","color":"#6f006f"},{"text":"n","color":"#6a006a"},{"text":"'s","color":"white"}," ",{"text":"Configuration","color":"white"}]

tellraw @s ["\n",{"text":"1","color":"green"},{"text":" stands for ","color":"white"},{"text":"Enabled","color":"green"},{"text":",\nwhile ","color":"white"},{"text":"0","color":"red"},{"text":" is ","color":"white"},{"text":"Disabled","color":"red"},"\n\n",{"text":"Click config entries' names to edit them","color":"white"}]

# TEMPLATE
#tellraw @s {"text":"","color":"#C076E5","hoverEvent": {"action": "show_text","contents": [{"text": "foka.config.X","color":"#DFDFDF"},"\n",{"text": "Click to edit","color":"#CEADD6"}]},"clickEvent": {"action": "suggest_command","value": "/scoreboard players set foka.config foka.config.X "}}
#tellraw @s {"text":"","color":"#C8ADD6"}
#execute if score foka.config foka.config.X matches 1 run tellraw @s {"text":"Enabled","color":"#91FF7B"}
#execute if score foka.config foka.config.X matches 0 run tellraw @s {"text":"Disabled","color":"#FF7B7B"}
#tellraw @s " "

tellraw @s {"text":"Auto Butcher - Phantoms","color":"#C076E5","hoverEvent": {"action": "show_text","contents": [{"text": "foka.config.auto_butcher.phantoms","color":"#DFDFDF"},"\n",{"text": "Click to edit","color":"#CEADD6"}]},"clickEvent": {"action": "suggest_command","value": "/scoreboard players set foka.config foka.config.auto_butcher.phantoms "}}
tellraw @s {"text":"Automatically deletes all Phantoms that spawn in The End, except for the ones in the Dragon's Den","color":"#C8ADD6"}
execute if score foka.config foka.config.auto_butcher.phantoms matches 1 run tellraw @s {"text":"Enabled","color":"#91FF7B"}
execute if score foka.config foka.config.auto_butcher.phantoms matches 0 run tellraw @s {"text":"Disabled","color":"#FF7B7B"}
tellraw @s " "

tellraw @s {"text":"Auto Butcher - Silverfish","color":"#C076E5","hoverEvent": {"action": "show_text","contents": [{"text": "foka.config.auto_butcher.silverfish","color":"#DFDFDF"},"\n",{"text": "Click to edit","color":"#CEADD6"}]},"clickEvent": {"action": "suggest_command","value": "/scoreboard players set foka.config foka.config.auto_butcher.silverfish "}}
tellraw @s {"text":"Automatically deletes all Silverfish that spawn in The End, except for the ones in the Dragon's Den","color":"#C8ADD6"}
execute if score foka.config foka.config.auto_butcher.silverfish matches 1 run tellraw @s {"text":"Enabled","color":"#91FF7B"}
execute if score foka.config foka.config.auto_butcher.silverfish matches 0 run tellraw @s {"text":"Disabled","color":"#FF7B7B"}
tellraw @s " "

tellraw @s {"text":"Custom End Music","color":"#C076E5","hoverEvent": {"action": "show_text","contents": [{"text": "foka.config.custom_music","color":"#DFDFDF"},"\n",{"text": "Click to edit","color":"#CEADD6"}]},"clickEvent": {"action": "suggest_command","value": "/scoreboard players set foka.config foka.config.custom_music "}}
tellraw @s {"text":"Replaces default End Music with custom one. Requires a resource pack that I am still yet to make, so this setting is useless for now","color":"#C8ADD6"}
execute if score foka.config foka.config.custom_music matches 1 run tellraw @s {"text":"Enabled","color":"#91FF7B"}
execute if score foka.config foka.config.custom_music matches 0 run tellraw @s {"text":"Disabled","color":"#FF7B7B"}
tellraw @s " "

tellraw @s {"text":"Entering End Effects - Custom Messages","color":"#C076E5","hoverEvent": {"action": "show_text","contents": [{"text": "foka.config.enter_end_effects.flavor_text","color":"#DFDFDF"},"\n",{"text": "Click to edit","color":"#CEADD6"}]},"clickEvent": {"action": "suggest_command","value": "/scoreboard players set foka.config foka.config.enter_end_effects.flavor_text "}}
tellraw @s {"text":"Send a random spooky message upon entering The End","color":"#C8ADD6"}
execute if score foka.config foka.config.enter_end_effects.flavor_text matches 1 run tellraw @s {"text":"Enabled","color":"#91FF7B"}
execute if score foka.config foka.config.enter_end_effects.flavor_text matches 0 run tellraw @s {"text":"Disabled","color":"#FF7B7B"}
tellraw @s " "

tellraw @s {"text":"Entering End Effects - Sounds","color":"#C076E5","hoverEvent": {"action": "show_text","contents": [{"text": "foka.config.enter_end_effects.sounds","color":"#DFDFDF"},"\n",{"text": "Click to edit","color":"#CEADD6"}]},"clickEvent": {"action": "suggest_command","value": "/scoreboard players set foka.config foka.config.enter_end_effects.sounds "}}
tellraw @s {"text":"Plays some sounds upon entering The End","color":"#C8ADD6"}
execute if score foka.config foka.config.enter_end_effects.sounds matches 1 run tellraw @s {"text":"Enabled","color":"#91FF7B"}
execute if score foka.config foka.config.enter_end_effects.sounds matches 0 run tellraw @s {"text":"Disabled","color":"#FF7B7B"}
tellraw @s " "

tellraw @s {"text":"Postgen - Load Main Island","color":"#C076E5","hoverEvent": {"action": "show_text","contents": [{"text": "foka.config.post_gen.load_main_island","color":"#DFDFDF"},"\n",{"text": "Click to edit","color":"#CEADD6"}]},"clickEvent": {"action": "suggest_command","value": "/scoreboard players set foka.config foka.config.post_gen.load_main_island "}}
tellraw @s [{"text":"Use wacky and laggy postgen methods to generate main island, which is not present by default","color":"#C8ADD6"},{"text":"\nNot recommended to disable, as it removes some features apart from the island","color":"#FF4141"}]
execute if score foka.config foka.config.post_gen.load_main_island matches 1 run tellraw @s {"text":"Enabled","color":"#91FF7B"}
execute if score foka.config foka.config.post_gen.load_main_island matches 0 run tellraw @s {"text":"Disabled","color":"#FF7B7B"}
tellraw @s " "

tellraw @s {"text":"Postgen - Enable Expanded Structure Block Size Mod Compatibility","color":"#C076E5","hoverEvent": {"action": "show_text","contents": [{"text": "foka.config.mod_support.expanded_structure_blocks","color":"#DFDFDF"},"\n",{"text": "Click to edit","color":"#CEADD6"}]},"clickEvent": {"action": "suggest_command","value": "/scoreboard players set foka.config foka.config.mod_support.expanded_structure_blocks "}}
tellraw @s [{"text":"Enables postgen support for mods that expand Structure Block's size limit beyond vanilla's 48x48x48, like Carpet.\nNot needed for non-modded playthroughs or people not using such mods","color":"#C8ADD6"},{"text":"\nDo not enable unless you have such mods, as it is going to break vanilla postgen generation of mine!","color":"#FF4141"}]
execute if score foka.config foka.config.mod_support.expanded_structure_blocks matches 1 run tellraw @s {"text":"Enabled","color":"#91FF7B"}
execute if score foka.config foka.config.mod_support.expanded_structure_blocks matches 0 run tellraw @s {"text":"Disabled","color":"#FF7B7B"}
tellraw @s " "



tellraw @s {"text":"Scroll to the top for a short tutorial on how to configurate some parts of this Datapack!","color":"#E0ACE9"}
