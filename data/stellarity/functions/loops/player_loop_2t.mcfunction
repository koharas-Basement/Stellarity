# Prismatic Pearl
execute if entity @s[scores={stellarity.items.prismatic_pearl.cooldown=1..}] run function stellarity:items/prismatic_pearl/cooldown/countdown

execute if entity @s[predicate=stellarity:items/armor/wearing_full_chorus_champion_armor,predicate=kohara:player/is_running,predicate=!kohara:player/is_swimming] rotated as @s rotated ~ 0 positioned ^ ^ ^-.33 run function stellarity:items/armors/chorus_champion_armor/visuals
execute if entity @s[tag=stellarity.holy_protection] rotated as @s rotated ~ 0 positioned ^ ^ ^-.33 run function stellarity:items/armors/hallowed_armor/visuals

# Nature's Wrath
execute as @e[type=wolf,tag=stellarity.spirit_wolf] at @s run function stellarity:items/spellbooks/natures_wrath/wolves/loop

scoreboard players reset @s stellarity.misc.loop.2t
