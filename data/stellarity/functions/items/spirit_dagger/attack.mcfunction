advancement revoke @s only stellarity:events/items/attack_with_spirit_dagger

execute unless entity @s[tag=stellarity.spirit_dagger.teleport] as @e[type=!#stellarity:invalid_targets,limit=1,sort=nearest,nbt={HurtTime:10s}] unless score @s stellarity.items.spirit_dagger.attract_cooldown matches 1.. unless entity @e[type=armor_stand,distance=..4,tag=stellarity.spirit_dagger.spirit] if predicate stellarity:utils/chance/50percent at @s run function stellarity:items/spirit_dagger/spirit/attract
