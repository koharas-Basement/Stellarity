# Every second
scoreboard players remove @s stellarity.items.spellbook.natures_wrath.cooldown.wolves 1
execute if score @s stellarity.items.spellbook.natures_wrath.cooldown.wolves matches 0 run function stellarity:items/spellbooks/natures_wrath/cooldown_countdown/wolves_ready
