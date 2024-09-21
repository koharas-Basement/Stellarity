loot spawn ~ ~1.7 ~ loot fokastudio:end/pandoras_box_drops/birch_forest
execute if predicate fokastudio:end/utils/chance/15percent run loot spawn ~ ~1.7 ~ loot fokastudio:end/pandoras_box_drops/birch_forest

summon pig ~ ~1.7 ~
summon cow ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/37percent run summon pig ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/23percent run summon pig ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/14percent run summon pig ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/43percent run summon cow ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/23percent run summon cow ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/25percent run summon sheep ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/30percent run summon sheep ~ ~1.7 ~

execute if predicate fokastudio:end/utils/chance/25percent run function fokastudio:end/items/pandoras_box/summons/birch_forest_light
