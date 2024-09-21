particle minecraft:flash ~ ~-.4 ~ 0 0 0 0 0 force

particle end_rod ~ ~-.4 ~ 0 0 0 0.13 17 normal

playsound minecraft:entity.warden.heartbeat block @a[distance=0..] ~ ~-.4 ~ 0.88
playsound minecraft:item.trident.thunder block @a[distance=0..] ~ ~-.4 ~ 1

function stellarity:mechanics/altar_of_accursed/crafting/global_effects_wave

advancement grant @p only stellarity:aota/cursed_crafting
