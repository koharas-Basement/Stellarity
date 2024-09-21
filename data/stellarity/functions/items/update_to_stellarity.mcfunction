data modify storage stellarity:temp update set from entity @s SelectedItem.tag."foka.special_item"

item modify entity @s weapon.mainhand stellarity:update_to_stellarity

title @s actionbar {"text":"Item updated to new NBT format!"}
