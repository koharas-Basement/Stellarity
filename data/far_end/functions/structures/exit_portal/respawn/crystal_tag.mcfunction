function far_end:structures/exit_portal/respawn/crystal_wave

team join stellarity.spirit_glow @s
data modify entity @s Glowing set value 1b
tag @s add fe.respawn_crystal
