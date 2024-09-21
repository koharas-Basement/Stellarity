kill @e[type=item,tag=stellarity.altar_of_the_accursed.enchanted_book,distance=..1.5,limit=1]

loot spawn ~ ~.1 ~ loot stellarity:items/cursed_tome

particle minecraft:happy_villager ~ ~-.4 ~ .2 .2 .2 0 15 normal

# No global effects, bcs different advancements
particle minecraft:flash ~ ~-.4 ~ 0 0 0 0 0 force

particle end_rod ~ ~-.4 ~ 0 0 0 0.13 17 normal

playsound minecraft:entity.warden.heartbeat block @a ~ ~ ~ 0.88
playsound minecraft:item.trident.thunder block @a ~ ~ ~ 1

advancement grant @p only stellarity:aota/an_introduction_to_dark_magic
