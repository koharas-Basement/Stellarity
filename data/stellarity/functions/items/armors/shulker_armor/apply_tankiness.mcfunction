# Levitation immunity
execute unless score @s stellarity.mechanics.void_totem_protection_time matches 1.. run effect clear @s levitation 
# Wither immunity
effect clear @s wither

# 20% Damage Reduction
effect give @s resistance 1 0 true
