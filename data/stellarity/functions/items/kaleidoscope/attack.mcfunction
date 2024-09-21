scoreboard players operation #charge stellarity.misc = @s stellarity.items.kaleidoscope.charge

execute if score @s[tag=!stellarity.items.kaleidoscope.cooldown] stellarity.items.kaleidoscope.charge matches 33..65 as @e[type=!#kohara:invalid_targets,nbt={HurtTime:10s},distance=..7.5,sort=nearest,limit=1] at @s anchored feet rotated 0 0 positioned ^ ^1.57 ^ run function stellarity:items/kaleidoscope/charges/1
execute if score @s[tag=!stellarity.items.kaleidoscope.cooldown] stellarity.items.kaleidoscope.charge matches 66..99 as @e[type=!#kohara:invalid_targets,nbt={HurtTime:10s},distance=..7.5,sort=nearest,limit=1] at @s anchored feet rotated 0 0 positioned ^ ^1.57 ^ run function stellarity:items/kaleidoscope/charges/2
execute if score @s[tag=!stellarity.items.kaleidoscope.cooldown] stellarity.items.kaleidoscope.charge matches 100 as @e[type=!#kohara:invalid_targets,nbt={HurtTime:10s},distance=..7.5,sort=nearest,limit=1] at @s anchored feet rotated 0 0 positioned ^ ^1.57 ^ run function stellarity:items/kaleidoscope/charges/3

tag @s add stellarity.items.kaleidoscope.cooldown
schedule function stellarity:items/kaleidoscope/cooldown/schedule 1t append
