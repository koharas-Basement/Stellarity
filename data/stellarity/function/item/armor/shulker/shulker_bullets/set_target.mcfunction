data merge entity @s {Tags:["stellarity.defensive_shulker_bullet"],Steps:1}
data modify entity @s Owner set from storage stellarity:temp shulker_buller_uuid

execute at @s run function stellarity:item/armor/shulker/shulker_bullets/seek
