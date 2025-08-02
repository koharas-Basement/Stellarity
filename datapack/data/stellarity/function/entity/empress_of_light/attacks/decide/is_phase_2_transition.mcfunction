execute if score @s stellarity.empress_of_light.health matches ..250 run function stellarity:entity/empress_of_light/attacks/decide/phase_2_transition

# I don't exactly remember what this was supposed to be for
# but deleting this line disables the boss entirely
  tag @s[scores={stellarity.empress_of_light.health=251..}] add stellarity.empress_of_light.attack_ready
