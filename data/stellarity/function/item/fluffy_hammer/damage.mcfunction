particle sweep_attack ~ ~ ~

$execute as @e[dx=1.5,dy=1.5,dz=1.5] run execute unless entity @s[nbt={UUID:$(Owner)}] run damage @s 15 stellarity:fluffy_slice by @p[nbt={UUID:$(Owner)},limit=1]
