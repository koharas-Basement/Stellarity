## Debuff immunity
# Levitation
effect clear @s levitation 
# Weakness
effect clear @s weakness

# 20% DR when swarmed
execute store result score #temp stellarity.misc if entity @e[type=!#kohara:invalid_targets,distance=0.01..6]
execute if score #temp stellarity.misc matches 4.. run effect give @s minecraft:resistance 1 0 true
