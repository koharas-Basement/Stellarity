scoreboard players remove @s stellarity.items.spectral_fury.until_charge_reset 1
execute if score @s stellarity.items.spectral_fury.until_charge_reset matches 0 run function stellarity:items/spectral_fury/charge_reset
