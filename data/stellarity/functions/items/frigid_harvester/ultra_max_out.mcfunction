# Special crack effect
function stellarity:items/frigid_harvester/effects/crack/final

data remove storage stellarity:temp aery_sword.item
# Replace lore
# Removes first 5 lines...
data modify storage stellarity:temp aery_sword.item set from entity @s SelectedItem.tag
data modify storage stellarity:temp aery_sword.lore set from storage stellarity:temp aery_sword.item.display.Lore
data remove storage stellarity:temp aery_sword.lore[0]
data remove storage stellarity:temp aery_sword.lore[0]
data remove storage stellarity:temp aery_sword.lore[0]
data remove storage stellarity:temp aery_sword.lore[0]
data remove storage stellarity:temp aery_sword.lore[0]
# ...and replaces them with
# 1) A new line (for visibility)
# 2) A mention that no more damage can be gained
# The order is reverse due to how 'data modify insert' works. I don't find it logical, but I can't think straigth, so...
data modify storage stellarity:temp aery_sword.lore insert 0 value '{"translate": "stellarity.items.weapons.frigid_harvester.description.ultra","italic":false,"color":"#EEEEEE","fallback":"It refuses to absorb any but a few more souls"}'
data modify storage stellarity:temp aery_sword.lore insert 0 value '{"text": " "}'

item modify entity @s weapon.mainhand stellarity:aery_sword_finalize

advancement grant @s only stellarity:exploration/truly_max_out_aery_sword
