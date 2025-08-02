# Every second
scoreboard players remove @s stellarity.items.spellbook.light.cooldown 1
execute if score @s stellarity.items.spellbook.light.cooldown matches 0 run function stellarity:item/spellbooks/light/ready
