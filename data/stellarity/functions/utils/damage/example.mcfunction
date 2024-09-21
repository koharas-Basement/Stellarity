scoreboard players set #damage stellarity.misc 200

# Ignore X% of entity armor (default: 0)
scoreboard players set #armor_penetration stellarity.misc 100

# Whether to ignore I-frames (default: false)
scoreboard players set #ignore_iframes stellarity.misc 0
tag @s add stellarity.damage.example_cause

# Entities with this tag will be the ones
# from whose direction knockback is going to come form
tag @s add stellarity.damage.attacker

function stellarity:utils/damage/start
