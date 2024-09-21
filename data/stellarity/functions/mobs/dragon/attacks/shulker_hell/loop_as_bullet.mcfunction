data modify entity @s Target set from entity @p UUID

execute unless entity @s[tag=stellarity.has_owner] run function stellarity:mobs/dragon/attacks/shulker_hell/set_owner

particle dragon_breath ~ ~0.2 ~ .04 .04 .04 0.01 1 force @a[distance=..128]
