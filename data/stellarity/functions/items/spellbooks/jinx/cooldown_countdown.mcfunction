# Every second
scoreboard players remove @s stellarity.items.spellbook.jinx.cooldown 1
execute if score @s stellarity.items.spellbook.jinx.cooldown matches 0 run function stellarity:items/spellbooks/jinx/ready
