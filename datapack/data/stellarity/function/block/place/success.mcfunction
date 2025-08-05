$playsound $(place_sound) block @a[distance=..32] 


$setblock ~ ~ ~ $(block)
$summon minecraft:item_display ~ ~ ~ {Tags:["smithed.entity","smithed.strict","stellarity.block"],transformation:{translation:[0f,0f,0f],left_rotation:[0f,0f,0f,1f],scale:[1.001f,1.001f,1.001f],right_rotation:[0f,0f,0f,1f]},item:{id:"minecraft:stone",components:{"minecraft:item_model":"$(model)"}}}
data modify entity @n[type=item_display,distance=..0.5] data."stellarity:block" set from entity @s data."stellarity:block"


