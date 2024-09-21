particle minecraft:falling_dust ice ~ ~1 ~ 0.45 0.72 0.45 0 1 normal
execute if predicate kohara:chance/40percent run particle dust 0.956 0.4 0.8 1.15 ~ ~1 ~ 0.45 0.72 0.45 0 1 normal

execute if predicate kohara:chance/50percent run \
    particle minecraft:enchant ~ ~1.5 ~ 0 0 0 1 2 normal

execute if predicate kohara:chance/28percent run \
	particle minecraft:sculk_soul ~ ~1 ~ 0 0 0 0.04 1
