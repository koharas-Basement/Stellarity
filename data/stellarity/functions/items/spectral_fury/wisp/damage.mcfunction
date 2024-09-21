$damage @s $(damage) player_attack by @p[distance=0.01..]
effect give @s glowing 10 0 false

tag @e[type=!#kohara:invalid_targets_with_player,distance=0.01..24,tag=stellarity.spectral_fury.untargettable] remove stellarity.spectral_fury.untargettable
execute if entity @e[type=!#kohara:invalid_targets_with_player,distance=0.01..16,tag=!stellarity.spectral_fury.untargettable] run tag @s[type=!player] add stellarity.spectral_fury.untargettable

execute if data entity @s {HurtTime:10s} as @e[type=marker,limit=1,sort=nearest,tag=stellarity.wisp] at @s run function stellarity:items/spectral_fury/wisp/add_pierce
