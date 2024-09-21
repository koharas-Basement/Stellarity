kill @s

data modify storage stellarity:temp custom_mob_death_sound_id set from entity @s Item.tag."stellarity.custom_mob_death_sound_id"

execute if data storage stellarity:temp {custom_mob_death_sound_id:"pixie"} run function stellarity:mobs/pixie/sounds/death
