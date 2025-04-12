execute if entity @s[predicate=stellarity:item/holding/aery_sword] run function stellarity:item/harvester/main

execute if items entity @s weapon.mainhand bread[minecraft:custom_data~{stellarity.special_item:"loaf_of_plenty",stellarity.loaf_of_plenty_final:1b},minecraft:food={nutrition:1,saturation:1}] run item modify entity @s weapon.mainhand stellarity:loaf_of_plenty_make_infinite

scoreboard players reset @s stellarity.misc.loop.3t
