execute if score @s stellarity.eol.health matches ..250 run function stellarity:mobs/eol/attacks/decide/phase_2_transition

# I don't exactly remember what this was supposed to be for
# but deleting this line disables the boss entirely
tag @s[scores={stellarity.eol.health=251..}] add stellarity.eol.attack_ready
