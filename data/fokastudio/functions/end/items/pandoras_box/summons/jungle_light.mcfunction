loot spawn ~ ~1.7 ~ loot fokastudio:end/pandoras_box_drops/jungle
execute if predicate fokastudio:end/utils/chance/15percent run loot spawn ~ ~1.7 ~ loot fokastudio:end/pandoras_box_drops/jungle

summon ocelot ~ ~1.7 ~
summon ocelot ~ ~1.7 ~
summon parrot ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/30percent run summon parrot ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/30percent run summon ocelot ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/20percent run summon panda ~ ~1.7 ~
execute if predicate fokastudio:end/utils/chance/15percent run summon panda ~ ~1.7 ~

execute if predicate fokastudio:end/utils/chance/25percent run function fokastudio:end/items/pandoras_box/summons/jungle_light
