execute store result storage kohara:temp object.tag."kohara.durability".dur int 1 run scoreboard players get $player.temp_0 kohara.misc
execute store result storage kohara:temp object.tag.Damage int 1 run scoreboard players get $player.temp_4 kohara.misc
execute store result storage kohara:temp object."kohara.durability".damage int 1 run scoreboard players get $player.temp_4 kohara.misc
data modify storage kohara:temp object.tag."kohara.durability".init set value 0b
data remove storage kohara:temp object.tag.display.Lore[-1]

scoreboard players set #mended kohara.misc 1
