advancement revoke @s only stellarity:event/item/frigid_harvester_cryonics

execute unless score @s stellarity.items.aery_sword.cryonics.cooldown matches 1.. run function stellarity:item/frigid_harvester/abilities/cryonics/start
