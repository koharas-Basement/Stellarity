# Every second
  scoreboard players remove @s stellarity.items.spellbook.return.cooldown 1
  execute if score @s stellarity.items.spellbook.return.cooldown matches ..1 run function stellarity:item/spellbooks/return/ready
