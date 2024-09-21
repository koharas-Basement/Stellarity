kill @e[type=item,tag=stellarity.aota.enchanted_book,distance=..1.5,limit=1]

loot spawn ~ ~.1 ~ loot stellarity:items/cursed_tome
tag @e[type=item,limit=1,sort=nearest] add stellarity.aota.skip

particle minecraft:happy_villager ~ ~-.4 ~ .2 .2 .2 0 15 normal

# No global effects, bcs different advancements
# And visual effects
particle minecraft:flash ~ ~-.4 ~ 0 0 0 0 1 force
particle minecraft:explosion ~ ~-.4 ~ 0 0 0 0 1 force

particle end_rod ~ ~-.4 ~ 0 0 0 0.13 17 normal
particle smoke ~ ~-.4 ~ 0 0 0 0.13 51 normal
particle large_smoke ~ ~-.4 ~ 0 0 0 0.13 17 normal

playsound minecraft:entity.warden.heartbeat block @a[distance=0..] ~ ~-.4 ~ 0.88
playsound minecraft:item.trident.thunder block @a[distance=0..] ~ ~-.4 ~ 1
playsound minecraft:entity.wither.hurt player @a[distance=0..] ~ ~-.4 ~ 1 0

function stellarity:mechanics/altar_of_accursed/crafting/global_effects_wave

advancement grant @p only stellarity:aota/an_introduction_to_dark_magic
