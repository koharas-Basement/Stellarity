item modify entity @s weapon.mainhand fokastudio:end/load_clockwork_crossbow
execute at @s run playsound minecraft:block.anvil.place player @a ~ ~1.1 ~ 0.52 1.2
execute unless predicate fokastudio:end/utils/chance/33percent run clear @s #minecraft:arrows 1
