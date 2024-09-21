summon marker ^ ^ ^ {Tags:["stellarity.book_of_conveyance"]}
tp @e[type=marker,tag=stellarity.book_of_conveyance,limit=1,sort=nearest] ~ ~ ~ ~ ~

scoreboard players operation @s stellarity.items.spellbook.conveyance.id = #stellarity.book_of_conveyance stellarity.items.spellbook.conveyance.id
scoreboard players operation @e[type=marker,tag=stellarity.book_of_conveyance,limit=1,sort=nearest] stellarity.items.spellbook.conveyance.id = #stellarity.book_of_conveyance stellarity.items.spellbook.conveyance.id
