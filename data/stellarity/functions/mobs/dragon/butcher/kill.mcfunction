kill @s
execute positioned 0 255 0 run fill ~3 ~ ~3 ~-3 ~-2 ~-3 air

# Clear any vanilla End Gateways
# 20 total, so 20 incredibly laggy /fill commands
# Afaik, there is no better way to do this
execute if block 96 75 0 end_gateway positioned 96 75 0 run fill ~1 ~2 ~1 ~-1 ~-2 ~-1 air
execute if block 91 75 29 end_gateway positioned 91 75 29 run fill ~1 ~2 ~1 ~-1 ~-2 ~-1 air
execute if block 77 75 56 end_gateway positioned 77 75 56 run fill ~1 ~2 ~1 ~-1 ~-2 ~-1 air
execute if block 56 75 77 end_gateway positioned 56 75 77 run fill ~1 ~2 ~1 ~-1 ~-2 ~-1 air
execute if block 29 75 91 end_gateway positioned 29 75 91 run fill ~1 ~2 ~1 ~-1 ~-2 ~-1 air
execute if block -1 75 96 end_gateway positioned -1 75 96 run fill ~1 ~2 ~1 ~-1 ~-2 ~-1 air
execute if block -30 75 91 end_gateway positioned -30 75 91 run fill ~1 ~2 ~1 ~-1 ~-2 ~-1 air
execute if block -57 75 77 end_gateway positioned -57 75 77 run fill ~1 ~2 ~1 ~-1 ~-2 ~-1 air
execute if block -78 75 56 end_gateway positioned -78 75 56 run fill ~1 ~2 ~1 ~-1 ~-2 ~-1 air
execute if block -92 75 29 end_gateway positioned -92 75 29 run fill ~1 ~2 ~1 ~-1 ~-2 ~-1 air
execute if block -96 75 -1 end_gateway positioned -96 75 -1 run fill ~1 ~2 ~1 ~-1 ~-2 ~-1 air
execute if block -92 75 -30 end_gateway positioned -92 75 -30 run fill ~1 ~2 ~1 ~-1 ~-2 ~-1 air
execute if block -78 75 -57 end_gateway positioned -78 75 -57 run fill ~1 ~2 ~1 ~-1 ~-2 ~-1 air
execute if block -57 75 -78 end_gateway positioned -57 75 -78 run fill ~1 ~2 ~1 ~-1 ~-2 ~-1 air
execute if block -30 75 -92 end_gateway positioned -30 75 -92 run fill ~1 ~2 ~1 ~-1 ~-2 ~-1 air
execute if block 0 75 -96 end_gateway positioned 0 75 -96 run fill ~1 ~2 ~1 ~-1 ~-2 ~-1 air
execute if block 29 75 -92 end_gateway positioned 29 75 -92 run fill ~1 ~2 ~1 ~-1 ~-2 ~-1 air
execute if block 56 75 -78 end_gateway positioned 56 75 -78 run fill ~1 ~2 ~1 ~-1 ~-2 ~-1 air
execute if block 77 75 -57 end_gateway positioned 77 75 -57 run fill ~1 ~2 ~1 ~-1 ~-2 ~-1 air
execute if block 91 75 -30 end_gateway positioned 91 75 -30 run fill ~1 ~2 ~1 ~-1 ~-2 ~-1 air

bossbar set stellarity:crystal_count players
bossbar set fe:ender_dragon players
