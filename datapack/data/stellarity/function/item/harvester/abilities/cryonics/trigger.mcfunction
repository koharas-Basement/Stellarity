advancement revoke @s only stellarity:event/item/aery_sword/cryonics_trigger

execute unless score @s stellarity.items.aery_sword.cryonics.cooldown matches 1.. run function stellarity:item/harvester/abilities/cryonics/start
