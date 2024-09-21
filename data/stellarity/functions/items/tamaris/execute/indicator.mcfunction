execute if predicate kohara:chance/40percent run particle minecraft:falling_dust gravel ^ ^1.5 ^ 0.15 0.15 0.15 0 1 normal @a[predicate=stellarity:items/holding/tamaris,distance=..32]


particle dust 0.5 0.5 0.5 1 ^ ^1.5 ^ 0.15 0.15 0.15 1 7 force @a[predicate=stellarity:items/holding/tamaris]
particle dust 0.33 0.33 0.33 1 ^ ^1.5 ^ 0.15 0.15 0.15 1 4 force @a[predicate=stellarity:items/holding/tamaris]

particle smoke ^ ^1.5 ^ 0.15 0.15 0.15 0.02 2 normal @a[predicate=stellarity:items/holding/tamaris]
execute if predicate kohara:chance/35percent run particle end_rod ^ ^1.5 ^ 0.15 0.15 0.15 0.03 1 normal @a[predicate=stellarity:items/holding/tamaris]
