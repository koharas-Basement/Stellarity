advancement revoke @s only stellarity:events/items/put_porta_altar_in_item_frame

execute as @e[type=#kohara:item_frames,tag=!stellarity.porta_altar.checked] if items entity @s container.0 *[custom_data~{stellarity.special_item:"porta_altar"}] at @s run function stellarity:items/porta_altar/item_frame/as_item_frame
