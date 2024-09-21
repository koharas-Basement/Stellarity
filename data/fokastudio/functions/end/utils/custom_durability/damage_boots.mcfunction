
#modify item
data modify storage fokastudio:end/temp object set from entity @s Inventory[{Slot:100b}]
execute unless data storage fokastudio:end/temp object.tag.foka_durability{init:1b} run function fokastudio:end/utils/custom_durability/init_item

function fokastudio:end/utils/custom_durability/change_durability
data remove storage fokastudio:end/temp object.tag.display.Lore[-1]

#destroy item if broken
item modify entity @s armor.feet fokastudio:end/append_durability_lore
execute if score $player.out_0 foka.misc.data matches -1..0 run playsound minecraft:entity.item.break player @a[distance=..16]
execute if score $player.out_0 foka.misc.data matches 0 run item replace entity @s armor.feet with minecraft:air
