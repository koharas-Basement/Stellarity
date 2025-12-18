function stellarity:entity/villager/remove_vanilla_trades

execute if data entity @s Villagerdata{profession:"minecraft:armorer"} run \
function stellarity:entity/villager/trades/armorer/5
execute if data entity @s Villagerdata{profession:"minecraft:butcher"} run \
function stellarity:entity/villager/trades/butcher/5
execute if data entity @s Villagerdata{profession:"minecraft:cartographer"} run \
function stellarity:entity/villager/trades/cartographer/5
execute if data entity @s Villagerdata{profession:"minecraft:cleric"} run \
function stellarity:entity/villager/trades/cleric/5
execute if data entity @s Villagerdata{profession:"minecraft:farmer"} run \
function stellarity:entity/villager/trades/farmer/5
execute if data entity @s Villagerdata{profession:"minecraft:fisherman"} run \
function stellarity:entity/villager/trades/fisherman/5
execute if data entity @s Villagerdata{profession:"minecraft:fletcher"} run \
function stellarity:entity/villager/trades/fletcher/5
execute if data entity @s Villagerdata{profession:"minecraft:leatherworker"} run \
function stellarity:entity/villager/trades/leatherworker/5
execute if data entity @s Villagerdata{profession:"minecraft:librarian"} run \
function stellarity:entity/villager/trades/librarian/5
execute if data entity @s Villagerdata{profession:"minecraft:mason"} run \
function stellarity:entity/villager/trades/mason/5
execute if data entity @s Villagerdata{profession:"minecraft:shepherd"} run \
function stellarity:entity/villager/trades/shepherd/5
execute if data entity @s Villagerdata{profession:"minecraft:toolsmith"} run \
function stellarity:entity/villager/trades/toolsmith/5
execute if data entity @s Villagerdata{profession:"minecraft:weaponsmith"} run \
function stellarity:entity/villager/trades/weaponsmith/5

tag @s add stellarity.villager.level_5
