# Every second
  scoreboard players remove @s stellarity.item.spellbook.return.cooldown 1
  execute if score @s stellarity.item.spellbook.return.cooldown matches 0 run function stellarity:item/spellbooks/return/ready
