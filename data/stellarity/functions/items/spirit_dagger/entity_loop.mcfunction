scoreboard players remove @s stellarity.items.spirit_dagger.attract_cooldown 3

execute if score @s stellarity.items.spirit_dagger.attract_cooldown matches ..0 run tag @s remove stellarity.items.spirit_dagger.cooldown

execute anchored eyes rotated ~ 0 run particle entity_effect ^ ^1 ^ 0.454 0.662 0.898 1 0 force @a[predicate=stellarity:items/spirit_dagger/holding_any]
execute anchored eyes rotated ~ 0 run particle entity_effect ^ ^1 ^ 0.796 0.545 0.901 1 0 force @a[predicate=stellarity:items/spirit_dagger/holding_any]
execute anchored eyes rotated ~ 0 run particle entity_effect ^ ^1 ^ 0.592 0.882 0.894 1 0 force @a[predicate=stellarity:items/spirit_dagger/holding_any]
