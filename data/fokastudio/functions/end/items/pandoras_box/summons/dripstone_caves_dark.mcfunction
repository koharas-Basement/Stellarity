loot spawn ~ ~1.7 ~ loot fokastudio:end/pandoras_box_drops/dripstone_caves
execute if predicate fokastudio:end/utils/chance/35percent run loot spawn ~ ~1.7 ~ loot fokastudio:end/pandoras_box_drops/dripstone_caves

summon drowned ~ ~1.7 ~
summon zombie ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/25percent run summon zombie ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/35percent run summon spider ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/35percent run summon cave_spider ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/35percent run summon cave_spider ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/15percent run summon creeper ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/15percent run summon creeper ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/25percent run summon skeleton ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/25percent run summon skeleton ~ ~1.7 ~

execute if predicate fokastudio:end/utils/chance/25percent run function fokastudio:end/items/pandoras_box/summons/dripstone_caves_dark
