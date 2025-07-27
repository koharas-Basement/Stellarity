data remove entity @n[type=villager] Offers.Recipes[].buy{id:"minecraft:emerald"}
data remove entity @n[type=villager] Offers.Recipes[].buy{id:"minecraft:emerald"}
data remove entity @n[type=villager] Offers.Recipes[].sell{id:"minecraft:emerald"}

data modify entity @s data."stellarity:villager_trades" set from entity @s Offers.Recipes

execute if data entity @s VillagerData{profession:"minecraft:armorer"} run \
function stellarity:mob/villager/trades/armorer/4
execute if data entity @s VillagerData{profession:"minecraft:butcher"} run \
function stellarity:mob/villager/trades/butcher/4
execute if data entity @s VillagerData{profession:"minecraft:cartographer"} run \
function stellarity:mob/villager/trades/cartographer/4
execute if data entity @s VillagerData{profession:"minecraft:cleric"} run \
function stellarity:mob/villager/trades/cleric/4
execute if data entity @s VillagerData{profession:"minecraft:farmer"} run \
function stellarity:mob/villager/trades/farmer/4
execute if data entity @s VillagerData{profession:"minecraft:fisherman"} run \
function stellarity:mob/villager/trades/fisherman/4
execute if data entity @s VillagerData{profession:"minecraft:fletcher"} run \
function stellarity:mob/villager/trades/fletcher/4
execute if data entity @s VillagerData{profession:"minecraft:leatherworker"} run \
function stellarity:mob/villager/trades/leatherworker/4
execute if data entity @s VillagerData{profession:"minecraft:librarian"} run \
function stellarity:mob/villager/trades/librarian/4
execute if data entity @s VillagerData{profession:"minecraft:mason"} run \
function stellarity:mob/villager/trades/mason/4
execute if data entity @s VillagerData{profession:"minecraft:shepherd"} run \
function stellarity:mob/villager/trades/shepherd/4
execute if data entity @s VillagerData{profession:"minecraft:toolsmith"} run \
function stellarity:mob/villager/trades/toolsmith/4
execute if data entity @s VillagerData{profession:"minecraft:weaponsmith"} run \
function stellarity:mob/villager/trades/weaponsmith/4

tag @s add stellarity.villager.level_4
