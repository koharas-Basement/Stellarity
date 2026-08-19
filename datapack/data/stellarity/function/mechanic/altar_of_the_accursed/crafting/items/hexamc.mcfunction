# Test
  execute if score @s stellarity.misc matches 1 \
  if entity @e[type=item,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{"craftengine:id":"hexamc:sharp_soul_shard"}}}},scores={stellarity.altar_of_the_accursed.count=1}] \
  run function stellarity:mechanic/altar_of_the_accursed/crafting/items/special/ruby