tag @s remove stellarity.holy_protection
scoreboard players set @s stellarity.items.armors.holy_protection_cooldown 480
effect clear @s resistance

execute rotated ~ 0 positioned ^ ^3 ^ run function stellarity:items/armors/hallowed_armor/holy_protection/dodge_visual

advancement grant @s only stellarity:aota/cancel_damage_hallowed_armor

# I-frames of some sort
# Such high Amplifier values make sure that
# these roman numbers do not appear at all!
effect give @s resistance 4 100 true
effect give @s fire_resistance 8 100 true
effect give @s water_breathing 8 100 true

effect give @s speed 5 0 true

# Cannot remove KR straight away due to my i-frames mechanic
# It is handled in loop.mcfunction
