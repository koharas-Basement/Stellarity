### Process Durability

#load data
execute store result score $player.temp_0 kohara.misc run data get storage kohara:temp object.tag."kohara.durability".dur
execute store result score $player.temp_1 kohara.misc run data get storage kohara:temp object.tag."kohara.durability".damage
execute store result score $player.temp_2 kohara.misc run data get storage kohara:temp object.tag.Damage
execute store result score $player.temp_3 kohara.misc run data get storage kohara:temp object.tag."kohara.durability".max_dur
function kohara:durability/get_max_durability

#change internal dur value
scoreboard players operation $player.temp_1 kohara.misc -= $player.temp_2 kohara.misc
scoreboard players operation $player.temp_0 kohara.misc += $player.temp_1 kohara.misc
scoreboard players operation $player.temp_1 kohara.misc += $player.temp_2 kohara.misc
execute if score $player.temp_4 kohara.misc matches 1.. if score $player.temp_0 kohara.misc > $player.temp_3 kohara.misc run scoreboard players operation $player.temp_0 kohara.misc = $player.temp_3 kohara.misc
execute if score $player.temp_0 kohara.misc matches ..-1 run scoreboard players set $player.temp_0 kohara.misc -1
execute if score $player.temp_4 kohara.misc matches 1.. store result storage kohara:temp object.tag."kohara.durability".dur int 1 run scoreboard players get $player.temp_0 kohara.misc

#set dur bar
scoreboard players operation $player.temp_5 kohara.misc = $player.temp_4 kohara.misc
scoreboard players operation $player.temp_6 kohara.misc = $player.temp_4 kohara.misc
scoreboard players remove $player.temp_6 kohara.misc 8
scoreboard players operation $player.temp_5 kohara.misc *= $player.temp_0 kohara.misc
scoreboard players operation $player.temp_5 kohara.misc /= $player.temp_3 kohara.misc
scoreboard players operation $player.temp_4 kohara.misc -= $player.temp_5 kohara.misc

execute if score $player.temp_4 kohara.misc matches 1.. if score $player.temp_4 kohara.misc > $player.temp_6 kohara.misc run scoreboard players operation $player.temp_4 kohara.misc = $player.temp_6 kohara.misc
execute if score $player.temp_4 kohara.misc matches 1.. store result storage kohara:temp object.tag.Damage int 1 run scoreboard players get $player.temp_4 kohara.misc
execute if score $player.temp_4 kohara.misc matches 1.. store result storage kohara:temp object.tag."kohara.durability".damage int 1 run scoreboard players get $player.temp_4 kohara.misc

execute if score $player.temp_4 kohara.misc matches 0 run function kohara:durability/mending

#output state
scoreboard players set $player.out_0 kohara.misc 1
execute if score $player.temp_0 kohara.misc matches ..-1 if data storage kohara:temp object.tag."kohara.durability" run scoreboard players set $player.out_0 kohara.misc 0
execute if score $player.temp_0 kohara.misc matches ..-1 if data storage kohara:temp object.tag."kohara.durability"{no_break:1b} run scoreboard players set $player.out_0 kohara.misc -1
