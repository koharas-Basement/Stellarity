execute as @e[type=#minecraft:raiders,tag=!stellarity.stronghold.buffed,predicate=stellarity:location/in_structure/stronghold] run function stellarity:mob/stronghold/buff_illagers

# Vault migrations

# execute at @a run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 vault{config:{loot_table:"stellarity:end_city/vault/elytra",key_item:{components: {"minecraft:item_name": {translate: "stellarity.items.materials.keys.winged"}, "minecraft:lore": ["", {color: "#EEEEEE", italic: 0b, translate: "stellarity.items.materials.keys.winged.description"}, "", {color: "#CC26FF", italic: 1b, translate: "Stellarity"}], "minecraft:item_model": "stellarity:winged_key", "minecraft:rarity": "rare", "minecraft:custom_data": {stellarity.special_item: "winged_key"}}, id: "minecraft:ominous_trial_key"}}} replace vault{config:{key_item:{components:{"minecraft:custom_data":{stellarity.special_item: "winged_key"}}}}}



schedule function stellarity:loop/timed/5_second 5s
