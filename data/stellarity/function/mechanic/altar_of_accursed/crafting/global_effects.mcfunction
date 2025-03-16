# All newly spawned items will be ignored by type checks
# and will be able to be picked up without sneaking
tag @e[type=item,distance=..1.5,tag=!stellarity.aota.checked_type] add stellarity.aota.skip

data remove storage stellarity:temp aota.enchants
data remove storage stellarity:temp aota.trim

particle minecraft:flash ~ ~-.4 ~ 0 0 0 0 0 force

particle end_rod ~ ~-.4 ~ 0 0 0 0.13 17 normal

playsound minecraft:entity.warden.heartbeat block @a[distance=0..] ~ ~-.4 ~ 0.88
playsound minecraft:item.trident.thunder block @a[distance=0..] ~ ~-.4 ~ 1

kill @e[type=item,distance=..1.5,tag=!stellarity.aota.skip]

advancement grant @p only stellarity:aota/cursed_crafting
