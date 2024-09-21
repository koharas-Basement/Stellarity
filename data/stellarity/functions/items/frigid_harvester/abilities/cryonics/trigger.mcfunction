advancement revoke @s only stellarity:events/items/frigid_harvester_cryonics

execute unless score @s stellarity.items.aery_sword.cryonics.cooldown matches 1.. run function stellarity:items/frigid_harvester/abilities/cryonics/start
