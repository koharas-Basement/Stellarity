particle minecraft:falling_dust ice ~ ~1 ~ 0.35 0.6 0.35 0 1 normal

execute if predicate kohara:chance/75percent run \
    particle minecraft:enchant ~ ~1.5 ~ 0 0 0 1 2 normal

execute if predicate kohara:chance/42percent run \
	particle minecraft:sculk_soul ~ ~1 ~ 0 0 0 0.04 1
