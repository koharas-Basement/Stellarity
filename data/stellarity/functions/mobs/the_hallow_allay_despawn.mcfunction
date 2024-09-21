scoreboard players add @s stellarity.misc 1

# 3 minutes. 3600/20, bcs loop happens every second
execute if score @s stellarity.misc matches 180.. unless entity @a[distance=..32] run tp @s ~ ~-1000 ~
execute unless entity @a[distance=..128] run tp @s ~ ~-1000 ~

execute if data entity @s {PersistenceRequired:1b} run tag @s remove stellarity.allay.natural_hallow_spawn
execute unless predicate stellarity:utils/holding_nothing run tag @s remove stellarity.allay.natural_hallow_spawn
