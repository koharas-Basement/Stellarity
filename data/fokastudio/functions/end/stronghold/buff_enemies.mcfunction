attribute @s generic.armor modifier add 39147e49-acc7-4a91-96f1-af1c41b25e0d "foka.stronghold_defense_buff" 5 add
attribute @s generic.attack_damage modifier add de9a7ae1-539e-416f-9bf5-001112b08a87 "foka.stronghold_attack_buff" 2 add
attribute @s generic.movement_speed modifier add 65b0c631-0e11-4c4e-9111-281843d92f1b "foka.stronghold_speed_buff" 0.1 multiply_base
# multiply_base is the same as 'add (X * 100)% of base value', which here is +10% 

effect give @s regeneration 1000000 0 true

tag @s add foka.stronghold_enemy_buffed
