item replace entity @s armor.head with minecraft:player_head{SkullOwner:{Id:[I;402745569,-18070400,-1132533341,99537336],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjRkNzY1MWU5ZGViNWMyODEzODIwZmVkMzExZDU0MTExOWYzMTU1ZWFhYjU0OWQzYWQ1MmQyMDJiYzNmMGU3In19fQ=="}]}}}

item replace entity @s weapon with air

tag @s add foka.pixie

data merge entity @s {Health:16,Silent:1b,ActiveEffects:[{Id:14,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:"generic.armor",Base:3d},{Name:"generic.follow_range",Base:-1d},{Name:"generic.max_health",Base:16d}],DeathLootTable:"fokastudio:end/mobs/pixie",ArmorDropChances:[0f,0f,0f,0f],CustomName:'{"translate":"Pixie","color":"#FFD655"}'}
particle flash ~ ~0.4 ~ 0 0 0 0 1 normal
