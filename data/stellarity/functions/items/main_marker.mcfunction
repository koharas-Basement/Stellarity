function stellarity:items/spellbooks/main

# Prismatic Punch
execute if entity @s[tag=stellarity.prismatic_blast] run function stellarity:items/prismatic_punch/blast_loop

# Starstruck Carcanet
execute if entity @s[tag=stellarity.carcanet.star] run function stellarity:items/starstruck_carcanet/star_loop

# Prismember
execute if entity @s[tag=stellarity.prismember] run function stellarity:items/prismember/spin/animation/main

# Copper Elektra Shield
execute if entity @s[tag=stellarity.items.elektra_shield.marker] run function stellarity:items/elektra_shield/dash/as_marker

# Spectral Fury
execute if entity @s[tag=stellarity.wisp] run function stellarity:items/spectral_fury/wisp/loop

# Stellar Striker
execute if entity @s[tag=stellarity.star] run function stellarity:items/stellar_striker/star/projectile/loop

# Pandora's Barrel
execute if entity @s[tag=stellarity.pandoras_barrel] run function stellarity:items/pandoras_barrel/animation/main
