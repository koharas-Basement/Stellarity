# Every second
  scoreboard players remove @s stellarity.item.spellbook.updraft.cooldown 1
  execute if score @s stellarity.item.spellbook.updraft.cooldown matches 0 run function stellarity:item/spellbooks/updraft/ready
