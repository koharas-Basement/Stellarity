# Beam Me Up
# Teleport over 100 blocks with a single Ender Pearl
execute if entity @s[scores={kohara.used_ender_pearl=1..},advancements={stellarity:adventure/beam_me_up=false}] run function stellarity:advancements/beam_me_up/throw
execute if entity @s[tag=stellarity.pearl_advancement_pending] run function stellarity:advancements/beam_me_up/loop

# Super Sonic
# Fly through a one block gap with an Elytra while moving over 40m/s
execute if entity @s[advancements={stellarity:end_city/super_sonic=false},scores={kohara.flight_speed=20..}] unless block ^ ^1 ^ #kohara:non_solid unless block ^ ^-1 ^ #kohara:non_solid unless block ^1 ^ ^ #kohara:non_solid unless block ^-1 ^ ^ #kohara:non_solid run advancement grant @s only stellarity:end_city/super_sonic
