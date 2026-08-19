# Every second
  scoreboard players remove @s stellarity.item.spellbook.light.cooldown 1
  execute if score @s stellarity.item.spellbook.light.cooldown matches 0 run function stellarity:item/spellbooks/light/ready
