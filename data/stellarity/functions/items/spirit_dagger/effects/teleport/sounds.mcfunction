playsound minecraft:item.chorus_fruit.teleport player @a[distance=0..] ~ ~ ~ 1 1
playsound minecraft:item.chorus_fruit.teleport player @a[distance=0..] ~ ~ ~ 1 0.66

playsound minecraft:entity.player.attack.sweep player @a[distance=0..] ~ ~ ~ 0.77 0.9
playsound minecraft:item.trident.riptide_3 player @a[distance=0..] ~ ~ ~ 1 1

execute if entity @s[name="kohara_"] run playsound stellarity:item.spirit_dagger.slash_kohara player @a[distance=0..] ~ ~ ~ 1 1
execute if entity @s[name=!"kohara_"] run playsound stellarity:item.spirit_dagger.teleport player @a[distance=0..] ~ ~ ~ 1 1
