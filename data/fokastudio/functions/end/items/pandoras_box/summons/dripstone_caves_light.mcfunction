loot spawn ~ ~1.7 ~ loot fokastudio:end/pandoras_box_drops/dripstone_caves
execute if predicate fokastudio:end/utils/chance/15percent run loot spawn ~ ~1.7 ~ loot fokastudio:end/pandoras_box_drops/dripstone_caves

summon bat ~ ~1.7 ~
summon bat ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/33percent run summon glow_squid ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/20percent run summon glow_squid ~ ~1.7 ~

execute if predicate fokastudio:end/utils/chance/25percent run function fokastudio:end/items/pandoras_box/summons/dripstone_caves_light
