# Every second
  scoreboard players remove @s stellarity.item.spellbook.jinx.cooldown 1
  execute if score @s stellarity.item.spellbook.jinx.cooldown matches 0 run function stellarity:item/spellbooks/jinx/ready
