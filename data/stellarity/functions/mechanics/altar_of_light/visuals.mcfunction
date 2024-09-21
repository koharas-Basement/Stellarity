particle firework ~ ~-0.3 ~ 0.33 0.33 0.33 0.01 1 normal
particle witch ~ ~ ~ 0.05 0.4 0.05 0 1 normal

particle dust 0.925 0.733 0.318 1 ~ ~-0.3 ~ .18 .18 .18 0 1 force @a[distance=..48]
particle dust 0.996 1 0.655 1 ~ ~-0.3 ~ .18 .18 .18 0 1 force @a[distance=..48]

execute if predicate kohara:chance/33percent run particle enchant ~ ~ ~ 0 0 0 1 1 normal
