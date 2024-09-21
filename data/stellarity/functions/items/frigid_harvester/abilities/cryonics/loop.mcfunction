tp @e[type=block_display,tag=stellarity.cryonics,limit=1,sort=nearest] ~-0.5 ~ ~-0.5

scoreboard players remove @s stellarity.items.aery_sword.cryonics.duration 1

effect give @s regeneration infinite 4 true
effect give @s jump_boost infinite 250 true
effect give @s slowness infinite 250 true
effect give @s blindness infinite 0 true
effect give @s resistance infinite 250 true
effect give @s fire_resistance infinite 250 true

attribute @s generic.knockback_resistance modifier add b0e535e5-1645-47ed-8a3c-0f7e6450ec71 "stellarity.cryonics" 100 add

execute if score @s stellarity.items.aery_sword.cryonics.duration matches 0 run function stellarity:items/frigid_harvester/abilities/cryonics/stop
