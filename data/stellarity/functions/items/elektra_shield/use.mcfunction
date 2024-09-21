advancement revoke @s only stellarity:events/items/use_elektra_shield_while_sneaking

tag @s add stellarity.items.elektra_shield.using

# Will get removed literally a tick later
effect give @s levitation infinite 255 true

# Immunity to knockback
attribute @s generic.knockback_resistance modifier add fc68f5ed-4b66-4a16-8bfa-76c993f23480 "stellarity.elektra_shield" 10 add

execute unless score @s stellarity.items.elektra_shield.dashes matches -2147483648..2147483647 run scoreboard players set @s stellarity.items.elektra_shield.dashes 3
scoreboard players remove @s stellarity.items.elektra_shield.dashes 1
function stellarity:items/elektra_shield/actionbar
