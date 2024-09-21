scoreboard players remove @s stellarity.items.spellbook.light.cooldown 2
execute if score @s stellarity.items.spellbook.light.cooldown matches 1..2 at @s run function stellarity:items/spellbooks/light/ready
