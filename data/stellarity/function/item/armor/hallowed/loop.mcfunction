# Functions loops only for players wearing Hallowed Armor
# Just a little note to self, keep reading :D

execute unless score @s stellarity.items.armors.holy_protection_cooldown matches -2147483647..2147483647 run \
	scoreboard players set @s stellarity.items.armors.holy_protection_cooldown 500

scoreboard players remove @s[scores={stellarity.items.armors.holy_protection_cooldown=1..}] stellarity.items.armors.holy_protection_cooldown 1
execute if score @s stellarity.items.armors.holy_protection_cooldown matches 1 run \
	function stellarity:item/armor/hallowed/holy_protection/on

# Because Milk Buckets exist :/
execute if entity @s[tag=stellarity.holy_protection] run summon minecraft:area_effect_cloud ~ ~ ~ {potion_contents:{custom_effects:[{id:"minecraft:resistance",amplifier:100b,duration:-1,show_particles:0b,show_icon:1b,ambient:1b}]},Duration:1,ReapplicationDelay:0,WaitTime:-1,Age:-1}

# Remove knockback resistance
execute if score @s stellarity.items.armors.holy_protection_cooldown matches 500..539 run particle minecraft:poof ~ ~1 ~ 0.3 0.5 0.3 0 1
execute if score @s stellarity.items.armors.holy_protection_cooldown matches 500 run attribute @s knockback_resistance modifier remove stellarity:holy_protection
execute if score @s stellarity.items.armors.holy_protection_cooldown matches 460 run function stellarity:item/armor/hallowed/holy_protection/remove_speed
