scoreboard players remove @s stellarity.items.prismember.until_charge_reset 1
execute if score @s stellarity.items.prismember.until_charge_reset matches 0 run function stellarity:items/prismember/charge/reset_charge
