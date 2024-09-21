loot spawn ~ ~1.7 ~ loot fokastudio:end/pandoras_box_drops/ocean
execute if predicate fokastudio:end/utils/chance/35percent run loot spawn ~ ~1.7 ~ loot fokastudio:end/pandoras_box_drops/ocean

summon drowned ~ ~1.7 ~
summon drowned ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/25percent run summon drowned ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/25percent run summon guardian ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/25percent run summon guardian ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/25percent run summon guardian ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/5percent run summon elder_guardian ~ ~1.7 ~


execute if predicate fokastudio:end/utils/chance/25percent run function fokastudio:end/items/pandoras_box/summons/ocean_dark
