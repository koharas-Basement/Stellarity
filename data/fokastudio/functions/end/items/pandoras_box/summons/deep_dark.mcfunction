loot spawn ~ ~1.7 ~ loot fokastudio:end/pandoras_box_drops/deep_dark
execute if predicate fokastudio:end/utils/chance/60percent run loot spawn ~ ~1.7 ~ loot fokastudio:end/pandoras_box_drops/deep_dark

# Risky way of getting minerals
execute if predicate fokastudio:end/utils/chance/7percent run summon warden ~ ~1.7 ~

execute if predicate fokastudio:end/utils/chance/40percent run function fokastudio:end/items/pandoras_box/summons/deep_dark
