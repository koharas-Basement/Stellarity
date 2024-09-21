kill @e[type=item,tag=stellarity.aota.book,distance=..1.5,limit=1]
summon item ~ ~-.4 ~ {Item:{Count:1b,id:"minecraft:enchanted_book",tag:{StoredEnchantments:[]}},Tags:["stellarity.aota.skip","stellarity.aota.new_book"]}

data modify entity @e[type=item,limit=1,sort=nearest,tag=stellarity.aota.new_book] Item.tag.StoredEnchantments set from entity @e[type=item,tag=stellarity.aota.enchanted,limit=1,sort=nearest] Item.tag.Enchantments
data remove entity @e[type=item,tag=stellarity.aota.enchanted,limit=1,sort=nearest] Item.tag.Enchantments

tag @e[type=item,tag=stellarity.aota.enchanted,limit=1,sort=nearest] add stellarity.aota.skip
data merge entity @e[type=item,tag=stellarity.aota.enchanted,limit=1,sort=nearest] {Glowing:0b,PickupDelay:0s,Tags:["stellarity.aota.skip"]}

# No global effects, bcs different advancements
# And visual effects
particle minecraft:flash ~ ~-.4 ~ 0 0 0 0 1 force

particle end_rod ~ ~-.4 ~ 0 0 0 0.13 17 normal
particle minecraft:enchant ~ ~-.4 ~ 0.35 0.35 0.35 0 62 normal

playsound minecraft:entity.warden.heartbeat block @a[distance=0..] ~ ~-.4 ~ 0.88
playsound minecraft:item.trident.thunder block @a[distance=0..] ~ ~-.4 ~ 1

function stellarity:mechanics/altar_of_accursed/crafting/global_effects_wave

advancement grant @p only stellarity:aota/disenchant_item
