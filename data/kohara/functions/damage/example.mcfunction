# Setting damage through a scoreboard is
# much more flexible compared to a macro
scoreboard players set #damage kohara.misc 190

# Entities with this tag will be the ones
# from whose direction knockback is going to come from
tag @s add kohara.attacker

# If you are going to use armor penetration, make sure to select
# a damage type which natively ignores invulnerability frames!!
function kohara:damage/calculate {armor_penetration:35,damage_boost_efficiency:0,damage_type:"kohara:armor_piercing",tag:"kohara.example"}
