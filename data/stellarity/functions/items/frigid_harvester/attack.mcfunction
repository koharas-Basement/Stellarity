advancement revoke @s only stellarity:events/items/attack_with_upgraded_aery_sword

# #cdamage stands for 'current damage'
# Idk if it would conflict with #damage in 'kill.mcfunction',
# but I am not taking any risks
execute store result score #cdamage stellarity.misc run data get entity @s SelectedItem.tag."stellarity.aery_sword.damage" 100

execute if score #cdamage stellarity.misc matches 300.. as @e[type=!#stellarity:invalid_targets,nbt={HurtTime:10s},limit=1,sort=nearest] at @s run function stellarity:items/frigid_harvester/abilities
