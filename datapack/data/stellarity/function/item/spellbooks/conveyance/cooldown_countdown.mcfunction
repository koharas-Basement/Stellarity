# Every second
  scoreboard players remove @s stellarity.item.spellbook.conveyance.cooldown 1
  execute if score @s stellarity.item.spellbook.conveyance.cooldown matches 0 run function stellarity:item/spellbooks/conveyance/ready
