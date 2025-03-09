# Initiated by a technical enchantment
execute as @p at @s if score @s stellarity.items.prismatic_pearl.cooldown matches 1.. run function stellarity:items/prismatic_pearl/throw/fail
execute as @p at @s unless score @s stellarity.items.prismatic_pearl.cooldown matches 1.. run function stellarity:items/prismatic_pearl/throw/suceed

function stellarity:items/prismatic_pearl/velocity
