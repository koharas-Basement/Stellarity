$tag @s add $(tag)

# Set variables to default values if they are not present
$scoreboard players set #armor_penetration kohara.misc $(armor_penetration)
$scoreboard players set #damage_boost_efficiency kohara.misc $(damage_boost_efficiency)
$data modify storage kohara:temp damage.type set value "$(damage_type)"

# Is there an attacker?
scoreboard players set #has_attacker kohara.misc 0
execute if entity @e[tag=kohara.attacker] run scoreboard players set #has_attacker kohara.misc 1
# If yes, then the damage instance will also deal small knockback!
data modify storage kohara:temp damage.attacker set value ""
execute if score #has_attacker kohara.misc matches 1 run data modify storage kohara:temp damage.attacker set value " by @e[limit=1,sort=nearest,tag=kohara.attacker]"

execute if score #has_attacker kohara.misc matches 1 unless score #damage_boost_efficiency kohara.misc matches 0 as @e[tag=kohara.attacker,limit=1,sort=nearest] run function kohara:damage/bonus_damage

execute unless score #armor_penetration kohara.misc matches 0 run function kohara:damage/armor_penetration

execute store result storage kohara:temp damage.damage_ap float 0.1 run scoreboard players get #damage_ap kohara.misc
execute store result storage kohara:temp damage.damage float 0.1 run scoreboard players get #damage kohara.misc

# Disable vanilla death messages
# This part ALWAYS has to be over the part which deals damage
execute store result score #death_messages kohara.misc run gamerule showDeathMessages
gamerule showDeathMessages false

## Applying damage
# Functions to execute after before the damage is dealt
function #kohara:damage/pre_damage
# Apply damage
function kohara:damage/apply/macro with storage kohara:temp damage
# Functions to execute after the damage is dealt
function #kohara:damage/post_damage

# Print out custom death messages
execute store result storage kohara:temp damage.health float 1 run data get entity @s Health 1
execute if score #death_messages kohara.misc matches 1 if entity @s[type=player] if data storage kohara:temp {damage:{health:0f}} run function #kohara:damage/death_messages
execute if score #death_messages kohara.misc matches 1 if data entity @s Owner if score #death_messages kohara.misc matches 1 if data storage kohara:temp {damage:{health:0f}} run function #kohara:damage/death_messages
# And then reenable vanilla ones!
# But only if they were enabled beforehand
execute if score #death_messages kohara.misc matches 1 run gamerule showDeathMessages true

# Remove tags
$tag @s remove $(tag)

# Remove the attacker tag
tag @e[tag=kohara.attacker] remove kohara.attacker

#scoreboard players reset #damage kohara.misc
#scoreboard players reset #damage_ap kohara.misc
