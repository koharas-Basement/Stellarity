scoreboard players set #mended kohara.misc 0

#modify item
execute unless data storage kohara:temp object.tag."kohara.durability"{init:1b} run function kohara:durability/init_item

function kohara:durability/change_durability
execute unless score #mended kohara.misc matches 1 run data remove storage kohara:temp object.tag.display.Lore[-1]

#destroy item if broken
item modify entity @s armor.legs kohara:append_durability_lore
execute if score $player.out_0 kohara.misc matches -1..0 at @s run playsound minecraft:entity.item.break player @a[distance=..16]
execute if score $player.out_0 kohara.misc matches -1..0 run item replace entity @s armor.legs with minecraft:air
