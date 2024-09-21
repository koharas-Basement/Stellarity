scoreboard players add @s[scores={stellarity.items.elektra_shield.dashes=0..1}] stellarity.items.elektra_shield.cooldown 2
scoreboard players add @s[scores={stellarity.items.elektra_shield.dashes=2}] stellarity.items.elektra_shield.cooldown 1

function stellarity:items/elektra_shield/actionbar

execute if score @s stellarity.items.elektra_shield.cooldown matches 280.. run function stellarity:items/elektra_shield/dash_ready
