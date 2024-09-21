scoreboard players remove @s stellarity.items.sabrewing.until_charge_reset 1
execute if score @s stellarity.items.sabrewing.until_charge_reset matches 0 run function stellarity:items/sabrewing/reset_charge
