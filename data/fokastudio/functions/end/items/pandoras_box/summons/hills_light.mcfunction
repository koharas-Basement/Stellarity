loot spawn ~ ~1.7 ~ loot fokastudio:end/pandoras_box_drops/hills
execute if predicate fokastudio:end/utils/chance/15percent run loot spawn ~ ~1.7 ~ loot fokastudio:end/pandoras_box_drops/hills

summon sheep ~ ~1.7 ~
summon sheep ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/35percent run summon pig ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/25percent run summon goat ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/45percent run summon cow ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/25percent run summon goat ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/25percent run summon sheep ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/30percent run summon sheep ~ ~1.7 ~

execute if predicate fokastudio:end/utils/chance/25percent run function fokastudio:end/items/pandoras_box/summons/hills_light
