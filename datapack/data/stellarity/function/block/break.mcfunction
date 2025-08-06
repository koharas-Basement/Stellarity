kill @e[type=item,distance=..1,nbt={Age:0s}]
kill @e[type=item,distance=..1,nbt={Age:1s}]
kill @e[type=item,distance=..1,nbt={Age:2s}]

# max creative mode check
  $execute unless data entity @p[gamemode=!spectator] {playerGameType:1} run loot spawn ~ ~ ~ loot $(loot_table)

kill @s

