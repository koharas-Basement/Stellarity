scoreboard players remove @s stellarity.items.spirit_dagger.until_consume_reset 1
execute if score @s stellarity.items.spirit_dagger.until_consume_reset matches 1 run function stellarity:items/spirit_dagger/charge/reset
