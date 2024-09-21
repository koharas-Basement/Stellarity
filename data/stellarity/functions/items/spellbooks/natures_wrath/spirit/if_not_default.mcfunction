# Nature's Spirits are shot in an order
scoreboard players add @p stellarity.items.spellbook.natures_wrath.order 1
# Don't reset but set it to 1
# Because index -1 would cause it to select the last element
# from the list, which would fire one spirit twice in a row
execute if score @p stellarity.items.spellbook.natures_wrath.order > #upgrades stellarity.misc run scoreboard players set @p stellarity.items.spellbook.natures_wrath.order 1
# Reduce by 1 because NBT lists start at index 0 and not 1
scoreboard players operation #order stellarity.misc = @p stellarity.items.spellbook.natures_wrath.order
scoreboard players remove #order stellarity.misc 1
execute store result storage stellarity:temp natures_wrath.index int 1 run scoreboard players get #order stellarity.misc

function stellarity:items/spellbooks/natures_wrath/spirit/random/set with storage stellarity:temp natures_wrath
function stellarity:items/spellbooks/natures_wrath/spirit/random/tag with storage stellarity:temp natures_wrath
