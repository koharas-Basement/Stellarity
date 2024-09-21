playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ .75 1.25
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 1.35

execute anchored eyes positioned ^ ^-0.287 ^ run function stellarity:items/prismatic_punch/shoot_event/particles

execute if entity @s[advancements={stellarity:events/items/shoot_prismatic_punch={normal=true}}] anchored eyes positioned ^ ^-0.287 ^ run function stellarity:items/prismatic_punch/shoot_event/normal
execute if entity @s[advancements={stellarity:events/items/shoot_prismatic_punch={multishot=true}}] anchored eyes positioned ^ ^-0.287 ^ run function stellarity:items/prismatic_punch/shoot_event/multishot
execute if entity @s[advancements={stellarity:events/items/shoot_prismatic_punch={piercing=true}}] anchored eyes positioned ^ ^-0.287 ^ run function stellarity:items/prismatic_punch/shoot_event/piercing

advancement revoke @s only stellarity:events/items/shoot_prismatic_punch
