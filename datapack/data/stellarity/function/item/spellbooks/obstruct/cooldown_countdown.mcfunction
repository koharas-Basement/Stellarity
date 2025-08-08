# Every second
  scoreboard players remove @s stellarity.item.spellbook.obstruct.cooldown 1
  execute if score @s stellarity.item.spellbook.obstruct.cooldown matches 0 run function stellarity:item/spellbooks/obstruct/ready
