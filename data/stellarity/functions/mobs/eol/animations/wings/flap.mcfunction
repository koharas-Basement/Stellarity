scoreboard players add #eol.wing_flap stellarity.eol.animation 1

## wings
# wing_Flap
execute if score #eol.wing_flap stellarity.eol.animation matches 1 rotated ~15 ~ run function stellarity:mobs/eol/animations/wings/model
execute if score #eol.wing_flap stellarity.eol.animation matches 1 rotated ~165 ~ run function stellarity:mobs/eol/animations/wings/model

execute if score #eol.wing_flap stellarity.eol.animation matches 2 rotated ~22.5 ~ run function stellarity:mobs/eol/animations/wings/model
execute if score #eol.wing_flap stellarity.eol.animation matches 2 rotated ~157.5 ~ run function stellarity:mobs/eol/animations/wings/model

execute if score #eol.wing_flap stellarity.eol.animation matches 3 rotated ~30 ~ run function stellarity:mobs/eol/animations/wings/model
execute if score #eol.wing_flap stellarity.eol.animation matches 3 rotated ~150 ~ run function stellarity:mobs/eol/animations/wings/model

execute if score #eol.wing_flap stellarity.eol.animation matches 4 rotated ~37.5 ~ run function stellarity:mobs/eol/animations/wings/model
execute if score #eol.wing_flap stellarity.eol.animation matches 4 rotated ~142.5 ~ run function stellarity:mobs/eol/animations/wings/model

execute if score #eol.wing_flap stellarity.eol.animation matches 5 rotated ~45 ~ run function stellarity:mobs/eol/animations/wings/model
execute if score #eol.wing_flap stellarity.eol.animation matches 5 rotated ~135 ~ run function stellarity:mobs/eol/animations/wings/model

execute if score #eol.wing_flap stellarity.eol.animation matches 6 rotated ~52.5 ~ run function stellarity:mobs/eol/animations/wings/model
execute if score #eol.wing_flap stellarity.eol.animation matches 6 rotated ~127.5 ~ run function stellarity:mobs/eol/animations/wings/model

execute if score #eol.wing_flap stellarity.eol.animation matches 7 rotated ~60 ~ run function stellarity:mobs/eol/animations/wings/model
execute if score #eol.wing_flap stellarity.eol.animation matches 7 rotated ~120 ~ run function stellarity:mobs/eol/animations/wings/model

execute if score #eol.wing_flap stellarity.eol.animation matches 8 rotated ~67.5 ~ run function stellarity:mobs/eol/animations/wings/model
execute if score #eol.wing_flap stellarity.eol.animation matches 8 rotated ~112.5 ~ run function stellarity:mobs/eol/animations/wings/model

# End
execute if score #eol.wing_flap stellarity.eol.animation matches 9 rotated ~75 ~ run function stellarity:mobs/eol/animations/wings/model
execute if score #eol.wing_flap stellarity.eol.animation matches 9 rotated ~105 ~ run function stellarity:mobs/eol/animations/wings/model

# Return
execute if score #eol.wing_flap stellarity.eol.animation matches 10 rotated ~67.5 ~ run function stellarity:mobs/eol/animations/wings/model
execute if score #eol.wing_flap stellarity.eol.animation matches 10 rotated ~112.5 ~ run function stellarity:mobs/eol/animations/wings/model

execute if score #eol.wing_flap stellarity.eol.animation matches 11 rotated ~60 ~ run function stellarity:mobs/eol/animations/wings/model
execute if score #eol.wing_flap stellarity.eol.animation matches 11 rotated ~120 ~ run function stellarity:mobs/eol/animations/wings/model

execute if score #eol.wing_flap stellarity.eol.animation matches 12 rotated ~52.5 ~ run function stellarity:mobs/eol/animations/wings/model
execute if score #eol.wing_flap stellarity.eol.animation matches 12 rotated ~127.5 ~ run function stellarity:mobs/eol/animations/wings/model

execute if score #eol.wing_flap stellarity.eol.animation matches 13 rotated ~45 ~ run function stellarity:mobs/eol/animations/wings/model
execute if score #eol.wing_flap stellarity.eol.animation matches 13 rotated ~135 ~ run function stellarity:mobs/eol/animations/wings/model

execute if score #eol.wing_flap stellarity.eol.animation matches 14 rotated ~37.5 ~ run function stellarity:mobs/eol/animations/wings/model
execute if score #eol.wing_flap stellarity.eol.animation matches 14 rotated ~142.5 ~ run function stellarity:mobs/eol/animations/wings/model

execute if score #eol.wing_flap stellarity.eol.animation matches 15 rotated ~30 ~ run function stellarity:mobs/eol/animations/wings/model
execute if score #eol.wing_flap stellarity.eol.animation matches 15 rotated ~150 ~ run function stellarity:mobs/eol/animations/wings/model

execute if score #eol.wing_flap stellarity.eol.animation matches 16 rotated ~22.5 ~ run function stellarity:mobs/eol/animations/wings/model
execute if score #eol.wing_flap stellarity.eol.animation matches 16 rotated ~157.5 ~ run function stellarity:mobs/eol/animations/wings/model

# Rince and repeat!
execute if score #eol.wing_flap stellarity.eol.animation matches 16.. run scoreboard players reset #eol.wing_flap stellarity.eol.animation
