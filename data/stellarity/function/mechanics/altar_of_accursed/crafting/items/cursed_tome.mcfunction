loot spawn ~ ~.1 ~ loot stellarity:items/cursed_tome

particle minecraft:happy_villager ~ ~-.4 ~ .2 .2 .2 0 15 normal

tag @e[type=item,distance=..1.5,tag=!stellarity.aota.checked_type] add stellarity.aota.skip

data remove storage stellarity:temp aota.enchants
data remove storage stellarity:temp aota.trim

particle minecraft:flash ~ ~-.4 ~ 0 0 0 0 0 force

particle end_rod ~ ~-.4 ~ 0 0 0 0.13 17 normal

playsound minecraft:entity.warden.heartbeat block @a[distance=0..] ~ ~-.4 ~ 0.88
playsound minecraft:item.trident.thunder block @a[distance=0..] ~ ~-.4 ~ 1

kill @e[type=item,distance=..1.5,tag=!stellarity.aota.skip]

function stellarity:mechanics/altar_of_accursed/crafting/global_effects_wave

advancement grant @p only stellarity:aota/an_introduction_to_dark_magic
