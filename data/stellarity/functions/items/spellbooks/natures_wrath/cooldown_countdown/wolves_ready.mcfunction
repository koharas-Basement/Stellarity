particle end_rod ~ ~1.22 ~ .3 .55 .3 0.02 11 normal @s
particle dust 0.353 0.525 0.769 1 ~ ~1 ~ .3 .55 .3 0 40 normal @s

playsound minecraft:item.bottle.fill_dragonbreath player @s ~ ~ ~ 0.2 0.75
playsound minecraft:item.book.page_turn player @s
particle enchant ~ ~1 ~ .4 .55 .4 0 30 normal

title @s actionbar {"translate":"stellarity.items.spellbooks.notification","fallback": "Your %s is ready to be used again","color":"dark_purple","with":[{"translate":"stellarity.items.spellbooks.natures_wrath","fallback":"Nature's Wrath"}]}
