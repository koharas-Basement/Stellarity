
data merge entity @s {Offers:{Recipes:[]},data:{"stellarity:villager_trades":[]}}

execute if data entity @s VillagerData{profession:"minecraft:armorer"} run \
function stellarity:mob/villager/trades/armorer/1
execute if data entity @s VillagerData{profession:"minecraft:butcher"} run \
function stellarity:mob/villager/trades/butcher/1
execute if data entity @s VillagerData{profession:"minecraft:cartographer"} run \
function stellarity:mob/villager/trades/cartographer/1
execute if data entity @s VillagerData{profession:"minecraft:cleric"} run \
function stellarity:mob/villager/trades/cleric/1
execute if data entity @s VillagerData{profession:"minecraft:farmer"} run \
function stellarity:mob/villager/trades/farmer/1
execute if data entity @s VillagerData{profession:"minecraft:fisherman"} run \
function stellarity:mob/villager/trades/fisherman/1
execute if data entity @s VillagerData{profession:"minecraft:fletcher"} run \
function stellarity:mob/villager/trades/fletcher/1
execute if data entity @s VillagerData{profession:"minecraft:leatherworker"} run \
function stellarity:mob/villager/trades/leatherworker/1
execute if data entity @s VillagerData{profession:"minecraft:librarian"} run \
function stellarity:mob/villager/trades/librarian/1
execute if data entity @s VillagerData{profession:"minecraft:mason"} run \
function stellarity:mob/villager/trades/mason/1
execute if data entity @s VillagerData{profession:"minecraft:shepherd"} run \
function stellarity:mob/villager/trades/shepherd/1
execute if data entity @s VillagerData{profession:"minecraft:toolsmith"} run \
function stellarity:mob/villager/trades/toolsmith/1
execute if data entity @s VillagerData{profession:"minecraft:weaponsmith"} run \
function stellarity:mob/villager/trades/weaponsmith/1

tag @s add stellarity.villager.employed
