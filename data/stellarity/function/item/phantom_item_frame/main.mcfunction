
execute if entity @s[tag=!stellarity.placed] run function stellarity:item/phantom_item_frame/place

execute if entity @s[tag=!stellarity.invisible] if data entity @s Item run function stellarity:item/phantom_item_frame/disappear
execute if entity @s[tag=stellarity.invisible] unless data entity @s Item run function stellarity:item/phantom_item_frame/reappear
