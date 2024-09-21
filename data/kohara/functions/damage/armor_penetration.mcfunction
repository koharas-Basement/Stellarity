# (100*x - x * apen)/100
# Returns the amount of damage which *DOESN'T* ignore armor

scoreboard players set #100 kohara.misc 100

# 100x
scoreboard players operation #temp kohara.misc = #damage kohara.misc
scoreboard players operation #temp_2 kohara.misc = #damage kohara.misc

scoreboard players operation #temp kohara.misc *= #100 kohara.misc
# yx
scoreboard players operation #temp2 kohara.misc = #armor_penetration kohara.misc
scoreboard players operation #temp2 kohara.misc *= #damage kohara.misc
# 100x - yx
scoreboard players operation #temp kohara.misc -= #temp2 kohara.misc
# /100
scoreboard players operation #temp kohara.misc /= #100 kohara.misc
scoreboard players operation #damage kohara.misc = #temp kohara.misc

scoreboard players operation #damage_ap kohara.misc = #temp_2 kohara.misc
scoreboard players operation #damage_ap kohara.misc -= #damage kohara.misc
