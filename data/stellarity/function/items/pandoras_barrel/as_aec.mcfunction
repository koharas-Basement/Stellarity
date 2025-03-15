kill @e[type=item,distance=..0.5,nbt={Item:{id:"minecraft:barrel"}}]

execute if score @s stellarity.misc matches 2..10 run setblock ~ ~ ~ barrel[facing=up,open=false]{lock:{items:"barrier"}} replace
execute if score @s stellarity.misc matches 11..65 run setblock ~ ~ ~ barrel[facing=up,open=true]{lock:{items:"barrier"}} replace
execute if score @s stellarity.misc matches 66..199 run setblock ~ ~ ~ barrel[facing=up,open=false]{lock:{items:"barrier"}} replace
execute if score @s stellarity.misc matches 200.. run setblock ~ ~ ~ air replace
