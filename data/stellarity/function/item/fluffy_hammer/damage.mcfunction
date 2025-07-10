particle sweep_attack ~ ~ ~

$execute as @e[dx=1.5,dy=1.5,dz=1.5,type=!item] run execute unless entity @s[nbt={UUID:$(Owner)}] run damage @s 10 stellarity:fluffy_slice by @p[nbt={UUID:$(Owner)},limit=1]

execute if score @s stellarity.misc matches 5.. run playsound entity.player.attack.sweep player @a[distance=..32] ~ ~ ~
