effect give @s resistance 1000000 100 true
particle end_rod ~ ~1.1 ~ 0 0 0 0.046 15 force
playsound minecraft:block.respawn_anchor.charge player @s ~ ~1.1 ~ 0.25 2
attribute @s generic.knockback_resistance modifier add e0fa9c52-78be-411d-b416-8920c9afd3fd "holy_protection" 1 add
tag @s add foka.holy_protection
