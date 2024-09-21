advancement revoke @s only stellarity:events/items/potions/attack_flask_of_frost

scoreboard players set #dot.damage stellarity.misc 15
scoreboard players set #dot.time stellarity.misc 60
scoreboard players set #dot.delay stellarity.misc 20

execute as @e[type=!#stellarity:invalid_target,limit=1,sort=nearest,nbt={HurtTime:10s}] run function stellarity:utils/dot/frostburn/apply
