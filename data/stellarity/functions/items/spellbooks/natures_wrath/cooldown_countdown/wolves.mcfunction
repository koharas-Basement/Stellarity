scoreboard players remove @s stellarity.items.spellbook.natures_wrath.cooldown.wolves 2
execute if score @s stellarity.items.spellbook.natures_wrath.cooldown.wolves matches 1..2 at @s run function stellarity:items/spellbooks/natures_wrath/cooldown_countdown/wolves_ready
