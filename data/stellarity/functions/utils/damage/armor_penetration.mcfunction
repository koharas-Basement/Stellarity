# (100*x - x * apen)/100
# Returns the amount of damage which *DOESN'T* ignore armor

scoreboard players set #100 stellarity.misc 100

# 100x
scoreboard players operation #temp stellarity.misc = #damage stellarity.misc
scoreboard players operation #temp_2 stellarity.misc = #damage stellarity.misc

scoreboard players operation #temp stellarity.misc *= #100 stellarity.misc
# yx
scoreboard players operation #temp2 stellarity.misc = #armor_penetration stellarity.misc
scoreboard players operation #temp2 stellarity.misc *= #damage stellarity.misc
# 100x - yx
scoreboard players operation #temp stellarity.misc -= #temp2 stellarity.misc
# /100
scoreboard players operation #temp stellarity.misc /= #100 stellarity.misc
scoreboard players operation #damage stellarity.misc = #temp stellarity.misc

scoreboard players operation #damage_ap stellarity.misc = #temp_2 stellarity.misc
scoreboard players operation #damage_ap stellarity.misc -= #damage stellarity.misc
