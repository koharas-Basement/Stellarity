# Constant
scoreboard players set #10 kohara.misc 10

# temp1 - full
# temp2 - truly a temporar variable
# temp3 - decimal
scoreboard players operation #temp1 kohara.misc = #damage kohara.misc
scoreboard players operation #temp2 kohara.misc = #damage kohara.misc
scoreboard players operation #temp3 kohara.misc = #damage kohara.misc

scoreboard players operation #temp1 kohara.misc /= #10 kohara.misc

scoreboard players operation #temp2 kohara.misc /= #10 kohara.misc
scoreboard players operation #temp2 kohara.misc *= #10 kohara.misc

scoreboard players operation #temp3 kohara.misc -= #temp2 kohara.misc

execute store result storage kohara:temp damage.damage.full int 1 run scoreboard players get #temp1 kohara.misc
execute store result storage kohara:temp damage.damage.decimal int 1 run scoreboard players get #temp3 kohara.misc

# Doing the same for armor penetration

# temp1 - full
# temp2 - truly a temporar variable
# temp3 - decimal
scoreboard players operation #temp1 kohara.misc = #damage_ap kohara.misc
scoreboard players operation #temp2 kohara.misc = #damage_ap kohara.misc
scoreboard players operation #temp3 kohara.misc = #damage_ap kohara.misc

scoreboard players operation #temp1 kohara.misc /= #10 kohara.misc

scoreboard players operation #temp2 kohara.misc /= #10 kohara.misc
scoreboard players operation #temp2 kohara.misc *= #10 kohara.misc

scoreboard players operation #temp3 kohara.misc -= #temp2 kohara.misc

execute store result storage kohara:temp damage.damage_ap.full int 1 run scoreboard players get #temp1 kohara.misc
execute store result storage kohara:temp damage.damage_ap.decimal int 1 run scoreboard players get #temp3 kohara.misc
