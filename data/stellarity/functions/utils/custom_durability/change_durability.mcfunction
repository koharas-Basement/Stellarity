
### Process Durability

#load data
execute store result score $player.temp_0 stellarity.misc run data get storage stellarity:temp object.tag.stellar_durability.dur
execute store result score $player.temp_1 stellarity.misc run data get storage stellarity:temp object.tag.stellar_durability.damage
execute store result score $player.temp_2 stellarity.misc run data get storage stellarity:temp object.tag.Damage
execute store result score $player.temp_3 stellarity.misc run data get storage stellarity:temp object.tag.stellar_durability.max_dur
function stellarity:utils/custom_durability/get_max_durability

#change internal dur value
scoreboard players operation $player.temp_1 stellarity.misc -= $player.temp_2 stellarity.misc
scoreboard players operation $player.temp_0 stellarity.misc += $player.temp_1 stellarity.misc
scoreboard players operation $player.temp_1 stellarity.misc += $player.temp_2 stellarity.misc
execute if score $player.temp_4 stellarity.misc matches 1.. if score $player.temp_0 stellarity.misc > $player.temp_3 stellarity.misc run scoreboard players operation $player.temp_0 stellarity.misc = $player.temp_3 stellarity.misc
execute if score $player.temp_0 stellarity.misc matches ..-1 run scoreboard players set $player.temp_0 stellarity.misc -1
execute if score $player.temp_4 stellarity.misc matches 1.. store result storage stellarity:temp object.tag.stellar_durability.dur int 1 run scoreboard players get $player.temp_0 stellarity.misc

#set dur bar
scoreboard players operation $player.temp_5 stellarity.misc = $player.temp_4 stellarity.misc
scoreboard players operation $player.temp_6 stellarity.misc = $player.temp_4 stellarity.misc
scoreboard players remove $player.temp_6 stellarity.misc 8
scoreboard players operation $player.temp_5 stellarity.misc *= $player.temp_0 stellarity.misc
scoreboard players operation $player.temp_5 stellarity.misc /= $player.temp_3 stellarity.misc
scoreboard players operation $player.temp_4 stellarity.misc -= $player.temp_5 stellarity.misc

execute if score $player.temp_4 stellarity.misc matches 1.. if score $player.temp_4 stellarity.misc > $player.temp_6 stellarity.misc run scoreboard players operation $player.temp_4 stellarity.misc = $player.temp_6 stellarity.misc
execute if score $player.temp_4 stellarity.misc matches 1.. store result storage stellarity:temp object.tag.Damage int 1 run scoreboard players get $player.temp_4 stellarity.misc
execute if score $player.temp_4 stellarity.misc matches 1.. store result storage stellarity:temp object.tag.stellar_durability.damage int 1 run scoreboard players get $player.temp_4 stellarity.misc

#change durability of unbreakable items
execute if score $player.temp_4 stellarity.misc matches 0 store result score $player.temp_0 stellarity.misc run data get storage stellarity:temp object.tag.stellar_durability.dur
execute if score $player.temp_4 stellarity.misc matches 0 run scoreboard players remove $player.temp_0 stellarity.misc 1
execute if score $player.temp_4 stellarity.misc matches 0 store result storage stellarity:temp object.tag.stellar_durability.dur int 1 run scoreboard players get $player.temp_0 stellarity.misc

#output state
scoreboard players set $player.out_0 stellarity.misc 1
execute if score $player.temp_0 stellarity.misc matches ..-1 if data storage stellarity:temp object.tag.stellar_durability run scoreboard players set $player.out_0 stellarity.misc 0
execute if score $player.temp_0 stellarity.misc matches ..-1 if data storage stellarity:temp object.tag.stellar_durability{no_break:1b} run scoreboard players set $player.out_0 stellarity.misc -1
