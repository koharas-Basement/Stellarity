loot spawn ~ ~1.7 ~ loot fokastudio:end/pandoras_box_drops/flower_forest
execute if predicate fokastudio:end/utils/chance/35percent run loot spawn ~ ~1.7 ~ loot fokastudio:end/pandoras_box_drops/flower_forest

summon zombie ~ ~1.7 ~
summon zombie ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/25percent run summon zombie ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/35percent run summon spider ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/35percent run summon spider ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/15percent run summon creeper ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/15percent run summon creeper ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/25percent run summon skeleton ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/25percent run summon skeleton ~ ~1.7 ~

execute if predicate fokastudio:end/utils/chance/25percent run function fokastudio:end/items/pandoras_box/summons/flower_forest_dark
