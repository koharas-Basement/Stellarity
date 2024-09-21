advancement revoke @s only stellarity:events/items/shoot_a_mob_with_call_of_the_void

execute as @e[type=!#kohara:invalid_targets,sort=nearest,limit=1,nbt={HurtTime:10s}] at @s run function stellarity:items/call_of_the_void/as_entity
