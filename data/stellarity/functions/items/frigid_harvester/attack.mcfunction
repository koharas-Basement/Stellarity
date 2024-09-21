advancement revoke @s only stellarity:events/items/attack/upgraded_aery_sword

# #cdamage stands for 'current damage'
# Idk if it would conflict with #damage in 'kill.mcfunction',
# but I am not taking any risks
execute store result score #cdamage stellarity.misc run data get entity @s SelectedItem.tag."stellarity.aery_sword.damage" 1

execute if score #cdamage stellarity.misc matches 3.. as @e[type=!#kohara:invalid_targets,nbt={HurtTime:10s},limit=1,sort=nearest] at @s run function stellarity:items/frigid_harvester/abilities
