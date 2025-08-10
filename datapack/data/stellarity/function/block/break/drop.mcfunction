execute align xyz run kill @e[type=item,distance=..1,dx=1,dy=1,dz=1,nbt={Age:0s}]
execute align xyz run kill @e[type=item,distance=..1,dx=1,dy=1,dz=1,nbt={Age:1s}]
execute align xyz run kill @e[type=item,distance=..1,dx=1,dy=1,dz=1,nbt={Age:2s}]

# max creative mode check
  $execute unless data entity @p[gamemode=!spectator] {playerGameType:1} run loot spawn ~ ~ ~ loot $(loot_table)

kill @s

