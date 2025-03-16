data modify storage stellarity:temp phantom_item_frame set from entity @s

execute if entity @s[tag=!stellarity.placed] run function stellarity:item/phantom_item_frame/place

execute if entity @s[tag=!stellarity.invisible] if data storage stellarity:temp phantom_item_frame.Item run function stellarity:item/phantom_item_frame/disappear
execute if entity @s[tag=stellarity.invisible] unless data storage stellarity:temp phantom_item_frame.Item run function stellarity:item/phantom_item_frame/reappear
