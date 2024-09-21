advancement revoke @s only stellarity:events/mobs/get_hit_by_enderman_no_shield

execute if score #difficulty stellarity.misc matches 2 if predicate stellarity:utils/chance/30percent run effect give @s darkness 6 0 false
execute if score #difficulty stellarity.misc matches 3 if predicate stellarity:utils/chance/30percent run effect give @s darkness 9 0 false
