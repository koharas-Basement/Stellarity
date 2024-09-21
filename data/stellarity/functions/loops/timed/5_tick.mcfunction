# Shulker Armor Shulker Bullet targetting
execute as @e[type=minecraft:shulker_bullet,tag=stellarity.defensive_shulker_bullet] at @s run function stellarity:items/armors/shulker_armor/shulker_bullets/seek
tag @a[tag=stellarity.items.shulker_armor.attacker] remove stellarity.items.shulker_armor.attacker

# Tridents return when in Void
execute as @e[type=trident,predicate=stellarity:utils/below_y_0,predicate=stellarity:locations/in_the_end] run data merge entity @s {DealtDamage:1b}

schedule function stellarity:loops/timed/5_tick 5t
