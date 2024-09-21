# Reduce max
scoreboard players set #1 stellarity.misc 1
scoreboard players operation #rng stellarity.misc = #upgrades stellarity.misc
scoreboard players operation #rng stellarity.misc -= #1 stellarity.misc
execute store result storage stellarity:temp natures_wrath.count int 1 run scoreboard players get #rng stellarity.misc

# I hope 3 macros at the same time isn't as bad as it sounds lmao
function stellarity:items/spellbooks/natures_wrath/spirit/random/value with storage stellarity:temp natures_wrath
function stellarity:items/spellbooks/natures_wrath/spirit/random/set with storage stellarity:temp natures_wrath
function stellarity:items/spellbooks/natures_wrath/spirit/random/tag with storage stellarity:temp natures_wrath
