loot spawn ~ ~ ~ loot stellarity:items/materials/hallowed_ingot

execute if score #count stellarity.misc matches ..63 run function stellarity:mechanics/consecration/drops/conversions/hallowed_ingot/if_63_or_less
execute if score #count stellarity.misc matches 64 run function stellarity:mechanics/consecration/drops/conversions/hallowed_ingot/if_64
