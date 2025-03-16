tag @s remove stellarity.holy_protection

effect clear @s resistance
attribute @s knockback_resistance modifier remove stellarity:holy_protection
function stellarity:item/armor/hallowed/holy_protection/remove_speed
scoreboard players set @s stellarity.items.armors.holy_protection_cooldown 500
