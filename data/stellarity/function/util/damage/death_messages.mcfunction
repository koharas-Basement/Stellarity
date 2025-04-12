#> Example
# Kept just for funzies tbh
execute if entity @s[tag=stellarity.damage.example_cause] run tellraw @a {"translate":"stellarity.death_messages.example_cause","with":[{"selector":"@s"}]}

#> Sharanga Explosion
execute if entity @s[tag=stellarity.damage.sharanga_explosion] run tellraw @a {"translate":"stellarity.death_messages.sharanga_explosion","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:item/holding/sharanga]"}]}

#> Starstruck Carcanet falling stars
execute if entity @s[tag=stellarity.damage.carcanet] run function stellarity:util/damage/death_messages/starstruck_shield

#> The Beginning and The End teleport slash
execute if entity @s[tag=stellarity.damage.spirit_dagger] run function stellarity:util/damage/death_messages/spirit_dagger

#> Dragon punch
execute if entity @s[tag=stellarity.damage.dragonblade] run function stellarity:util/damage/death_messages/dragonblade

#> Tamaris
execute if entity @s[tag=stellarity.damage.tamaris] run function stellarity:util/damage/death_messages/tamaris

#> Prismatic Inferno
execute if entity @s[tag=stellarity.damage.dot.prismaric_inferno] run function stellarity:util/damage/death_messages/prismatic_inferno

#> Frostburn
execute if entity @s[tag=stellarity.damage.dot.frostburn] run function stellarity:util/damage/death_messages/frostburn

#> Kaleidoscope
execute if entity @s[tag=stellarity.damage.kaleidoscope] run function stellarity:util/damage/death_messages/kaleidoscope

###> Empress of Light
#> Prismatic Bolts
execute if entity @s[tag=stellarity.damage.eol.prismatic_bolts] run tellraw @a {"translate":"stellarity.death_messages.eol.prismatic_bolts","with":[{"selector":"@s"}]}

#> Ethereal Lance
execute if entity @s[tag=stellarity.damage.eol.ethereal_lance] run tellraw @a {"translate":"stellarity.death_messages.eol.ethereal_lance","with":[{"selector":"@s"}]}

#> Dash
execute if entity @s[tag=stellarity.damage.eol.dash] run tellraw @a {"translate":"stellarity.death_messages.eol.dash","with":[{"selector":"@s"}]}
