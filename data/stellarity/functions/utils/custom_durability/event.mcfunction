advancement revoke @s only stellarity:events/custom_item_durability_change
advancement revoke @s only stellarity:events/custom_item_mend

tag @s add stellarity.custom_durability.scheduled
schedule function stellarity:utils/custom_durability/scheduled 1t
