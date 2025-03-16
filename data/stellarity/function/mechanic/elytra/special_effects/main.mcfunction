execute if predicate \
	{"condition":"minecraft:entity_properties","entity":"this","predicate":{"equipment":{"chest":{"predicates":{"minecraft:custom_data":"{stellarity.special_item:\"dragon_wings\"}"}}}}} \
	run function stellarity:mechanic/elytra/special_effects/dragon_wings

execute if predicate \
	{"condition":"minecraft:entity_properties","entity":"this","predicate":{"equipment":{"chest":{"predicates":{"minecraft:custom_data":"{stellarity.special_item:\"phantom_wings\"}"}}}}} \
	run function stellarity:mechanic/elytra/special_effects/phantom_wings
