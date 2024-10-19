# Prismatic Pearl
execute if entity @s[scores={stellarity.items.prismatic_pearl.cooldown=1..}] run function stellarity:items/prismatic_pearl/cooldown/countdown

execute if entity @s[predicate=stellarity:items/armor/wearing_full_chorus_champion_armor,predicate=kohara:player/is_running,predicate=!kohara:player/is_swimming,predicate=!kohara:player/is_sneaking] rotated as @s rotated ~ 0 positioned ^ ^ ^-.33 run function stellarity:items/armor/chorus_champion/visuals
execute if entity @s[tag=stellarity.holy_protection] run function stellarity:items/armor/hallowed/visuals
execute if entity @s[predicate=stellarity:items/armor/floral/wearing_full_set,predicate=kohara:player/is_running,predicate=!kohara:player/is_swimming,predicate=!kohara:player/is_sneaking] run function stellarity:items/armor/floral/running_trail

# Nature's Wrath
# execute as @e[type=wolf,tag=stellarity.spirit_wolf] at @s run function stellarity:items/spellbooks/natures_wrath/wolves/loop

scoreboard players reset @s stellarity.misc.loop.2t
