execute if entity @s[tag=stellarity.damage.example_cause] run tellraw @a {"translate":"stellarity.death_messages.example_cause","fallback":"%s died randomly due to an example of Stellarity's custom damage system","with":[{"selector":"@s"}]}

execute if entity @s[tag=stellarity.damage.sharanga_explosion] run tellraw @a {"translate":"stellarity.death_messages.sharanga_explosion","fallback":"%1$s was torn apart by %2$s's Spectral Boom Boom","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:items/holding_sharanga]"}]}

execute if entity @s[tag=stellarity.damage.carcanet] run tellraw @a {"translate":"stellarity.death_messages.carcanet","fallback":"%1$s was struck too hard by %2$s's star","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:items/holding_starstruck_carcanet]"}]}

execute if entity @s[tag=stellarity.damage.spirit_dagger] run tellraw @a {"translate":"stellarity.death_messages.spirit_dagger","fallback":"%1$s had their spirit slashed in half by %2$s","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:items/spirit_dagger/holding]"}]}

execute if entity @s[tag=stellarity.damage.dragonblade] run tellraw @a {"translate":"stellarity.death_messages.dragonblade","fallback":"%1$s was punched into the otherworld by %2$s","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:items/holding_dragonblade,predicate=stellarity:utils/player/is_sneaking]"}]}

execute if entity @s[tag=stellarity.damage.tamaris_execute] run tellraw @a {"translate":"stellarity.death_messages.tamaris_execute","fallback":"%1$s was publicly executed by %2$s","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:items/holding_tamaris,predicate=stellarity:utils/player/is_sneaking]"}]}

execute if entity @s[tag=stellarity.damage.dot.dark_decay] run tellraw @a {"translate":"stellarity.death_messages.dot.dark_decay","fallback":"%1$s decayed into nothingness","with":[{"selector":"@s"}]}

execute if entity @s[tag=stellarity.damage.dot.prismarine_inferno] run tellraw @a {"translate":"stellarity.death_messages.dot.prismarine_inferno","fallback":"%1$s was burnt alive by rainbow lights","with":[{"selector":"@s"}]}

execute if entity @s[tag=stellarity.damage.dot.frostburn] run tellraw @a {"translate":"stellarity.death_messages.dot.frostburn","fallback":"%1$s was turned into an icicle","with":[{"selector":"@s"}]}

execute if entity @s[tag=stellarity.damage.natures_wrath] run tellraw @a {"translate":"stellarity.death_messages.natures_wrath","fallback":"%1$s felt nature's revenge","with":[{"selector":"@s"}]}

execute if entity @s[tag=stellarity.damage.kaleidoscope] run tellraw @a {"translate":"stellarity.death_messages.kaleidoscope","fallback":"%1$s couldn't stand %2$s's heat","with":[{"selector":"@s"},{"selector":"@p[predicate=stellarity:items/holding_kaleidoscope]"}]}

execute if entity @s[tag=stellarity.damage.eol.prismatic_bolts] run tellraw @a {"translate":"stellarity.death_messages.eol.prismatic_bolts","fallback":"%1$s forgot to dodge the Empress of Light's attacks","with":[{"selector":"@s"}]}

execute if entity @s[tag=stellarity.damage.eol.ethereal_lance] run tellraw @a {"translate":"stellarity.death_messages.eol.ethereal_lance","fallback":"%1$s was pierced through with the Empress of Light's Ethereal Lance","with":[{"selector":"@s"}]}

execute if entity @s[tag=stellarity.damage.eol.dash] run tellraw @a {"translate":"stellarity.death_messages.eol.dash","fallback":"%1$s didn't move out of the Empress of Light's way in time","with":[{"selector":"@s"}]}
