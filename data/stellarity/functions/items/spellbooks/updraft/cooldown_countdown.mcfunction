scoreboard players remove @s stellarity.items.spellbook.updraft.cooldown 2
execute if score @s stellarity.items.spellbook.updraft.cooldown matches 1..2 at @s run function stellarity:items/spellbooks/updraft/ready
