#> Example
# Kept just for funzies tbh
execute if entity @s[tag=stellarity.damage.example_cause] run tellraw @a {"translate":"stellarity.death_messages.example_cause","fallback":"%s died randomly due to an example of Stellarity's custom damage system","with":[{"selector":"@s"}]}

#> Sharanga Explosion
execute if entity @s[tag=stellarity.damage.sharanga_explosion] run tellraw @a {"translate":"stellarity.death_messages.sharanga_explosion","fallback":"%1$s was torn apart by %2$s's Spectral Boom Boom","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:items/holding/sharanga]"}]}

#> Starstruck Carcanet falling stars
execute if entity @s[tag=stellarity.damage.carcanet] run function stellarity:utils/damage/death_messages/starstruck_carcanet

#> The Beginning and The End teleport slash
execute if entity @s[tag=stellarity.damage.spirit_dagger] run function stellarity:utils/damage/death_messages/spirit_dagger

#> Dragon punch
execute if entity @s[tag=stellarity.damage.dragonblade] run function stellarity:utils/damage/death_messages/dragonblade

#> Tamaris
execute if entity @s[tag=stellarity.damage.tamaris_execute] run function stellarity:utils/damage/death_messages/tamaris

#> Prismatic Inferno
execute if entity @s[tag=stellarity.damage.dot.prismaric_inferno] run function stellarity:utils/damage/death_messages/prismatic_inferno

#> Frostburn
execute if entity @s[tag=stellarity.damage.dot.frostburn] run function stellarity:utils/damage/death_messages/frostburn

#> Nature's Wrath
execute if entity @s[tag=stellarity.damage.natures_wrath] run function stellarity:utils/damage/death_messages/natures_wrath

#> Kaleidoscope
execute if entity @s[tag=stellarity.damage.kaleidoscope] run function stellarity:utils/damage/death_messages/kaleidoscope

###> Empress of Light
#> Prismatic Bolts
execute if entity @s[tag=stellarity.damage.eol.prismatic_bolts] run tellraw @a {"translate":"stellarity.death_messages.eol.prismatic_bolts","fallback":"%1$s forgot to dodge the Empress of Light's attacks","with":[{"selector":"@s"}]}

#> Ethereal Lance
execute if entity @s[tag=stellarity.damage.eol.ethereal_lance] run tellraw @a {"translate":"stellarity.death_messages.eol.ethereal_lance","fallback":"%1$s was pierced through with the Empress of Light's Ethereal Lance","with":[{"selector":"@s"}]}

#> Dash
execute if entity @s[tag=stellarity.damage.eol.dash] run tellraw @a {"translate":"stellarity.death_messages.eol.dash","fallback":"%1$s didn't move out of the Empress of Light's way in time","with":[{"selector":"@s"}]}
