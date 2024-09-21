# Beam Me Up
# Teleport over 100 blocks with a single Ender Pearl
execute as @a[scores={stellarity.misc.used_ender_pearl=1..},advancements={stellarity:adventure/beam_me_up=false}] at @s run function stellarity:advancements/beam_me_up/throw
execute as @a[tag=stellarity.pearl_advancement_pending] at @s run function stellarity:advancements/beam_me_up/loop

# Super Sonic
# Fly through a one block gap with an Elytra while moving over 40m/s
execute as @a[advancements={stellarity:end_city/super_sonic=false},scores={stellarity.misc.flight_speed=20..}] at @s unless block ^ ^1 ^ #stellarity:non_solid unless block ^ ^-1 ^ #stellarity:non_solid unless block ^1 ^ ^ #stellarity:non_solid unless block ^-1 ^ ^ #stellarity:non_solid run advancement grant @s only stellarity:end_city/super_sonic
