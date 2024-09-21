data modify storage stellarity:temp villager_trades append value {maxUses:16,rewardExp:1b,priceMultiplier:0.05,demand:16,specialPrice:0,buy:{id:"cooked_cod",Count:10,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"emerald",Count:1,tag:{}}}
loot spawn ~ ~-5 ~ loot stellarity:items/fish/ender_koi
execute positioned ~ ~-5 ~ run data modify storage stellarity:temp villager_trades[-1].buy.tag set from entity @e[type=item,limit=1,sort=nearest] Item.tag
execute positioned ~ ~-5 ~ run kill @e[type=item,limit=1,sort=nearest]

data modify storage stellarity:temp villager_trades append value {maxUses:16,rewardExp:1b,priceMultiplier:0.05,demand:16,specialPrice:0,buy:{id:"cooked_cod",Count:7,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"emerald",Count:2,tag:{}}}
scoreboard players set in stellarity.misc 1
scoreboard players set in1 stellarity.misc 2
function stellarity:utils/rng/range
execute if score out stellarity.misc matches 1 run loot spawn ~ ~-5 ~ loot stellarity:items/fish/amethyst_budfish
execute if score out stellarity.misc matches 2 run loot spawn ~ ~-5 ~ loot stellarity:items/fish/bubblefish
execute positioned ~ ~-5 ~ run data modify storage stellarity:temp villager_trades[-1].buy.tag set from entity @e[type=item,limit=1,sort=nearest] Item.tag
execute positioned ~ ~-5 ~ run kill @e[type=item,limit=1,sort=nearest]

data modify storage stellarity:temp villager_trades append value {maxUses:16,rewardExp:1b,priceMultiplier:0.05,demand:16,specialPrice:0,buy:{id:"cooked_cod",Count:7,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"emerald",Count:2,tag:{}}}
scoreboard players set in stellarity.misc 1
scoreboard players set in1 stellarity.misc 3
function stellarity:utils/rng/range
execute if score out stellarity.misc matches 1 run loot spawn ~ ~-5 ~ loot stellarity:items/fish/crimson_tigerfish
execute if score out stellarity.misc matches 2 run loot spawn ~ ~-5 ~ loot stellarity:items/fish/flarefin_koi
execute if score out stellarity.misc matches 3 run loot spawn ~ ~-5 ~ loot stellarity:items/fish/fleshy_piranha
execute positioned ~ ~-7 ~ run data modify storage stellarity:temp villager_trades[-1].buy.tag set from entity @e[type=item,limit=1,sort=nearest] Item.tag
execute positioned ~ ~-7 ~ run kill @e[type=item,limit=1,sort=nearest]

data modify storage stellarity:temp villager_trades append value {maxUses:16,rewardExp:1b,priceMultiplier:0.05,demand:16,specialPrice:0,buy:{id:"cooked_cod",Count:7,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"emerald",Count:2,tag:{}}}
scoreboard players set in stellarity.misc 1
scoreboard players set in1 stellarity.misc 3
function stellarity:utils/rng/range
execute if score out stellarity.misc matches 1 run loot spawn ~ ~-5 ~ loot stellarity:items/fish/frost_minnow
execute if score out stellarity.misc matches 2 run loot spawn ~ ~-5 ~ loot stellarity:items/fish/overgrown_cod
execute if score out stellarity.misc matches 3 run loot spawn ~ ~-5 ~ loot stellarity:items/fish/prismite
execute positioned ~ ~-8 ~ run data modify storage stellarity:temp villager_trades[-1].buy.tag set from entity @e[type=item,limit=1,sort=nearest] Item.tag
execute positioned ~ ~-8 ~ run kill @e[type=item,limit=1,sort=nearest]

data modify storage stellarity:temp villager_trades append value {maxUses:8,rewardExp:1b,priceMultiplier:0.1,demand:8,specialPrice:0,buy:{id:"coal",Count:10,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"emerald",Count:1,tag:{}}}

data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"string",Count:18,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"emerald",Count:1,tag:{}}}

scoreboard players set in stellarity.misc 1
scoreboard players set in1 stellarity.misc 2
function stellarity:utils/rng/range
execute if score out stellarity.misc matches 1 run data modify storage stellarity:temp villager_trades append value {maxUses:8,rewardExp:1b,priceMultiplier:0.05,demand:8,specialPrice:0,buy:{id:"emerald",Count:2,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"campfire",Count:1,tag:{}}}
execute if score out stellarity.misc matches 2 run data modify storage stellarity:temp villager_trades append value {maxUses:8,rewardExp:1b,priceMultiplier:0.05,demand:8,specialPrice:0,buy:{id:"emerald",Count:3,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"soul_campfire",Count:1,tag:{}}}

data modify storage stellarity:temp villager_trades append value {maxUses:1,rewardExp:1b,priceMultiplier:0.5,demand:1,specialPrice:0,buy:{id:"fishing_rod",Count:1,tag:{}},buyB:{id:"emerald",Count:64,tag:{}},sell:{id:"fishing_rod",Count:1,tag:{}}}
loot spawn ~ ~-5 ~ loot stellarity:items/fisher_of_voids
execute positioned ~ ~-5 ~ run data modify storage stellarity:temp villager_trades[-1].sell.tag set from entity @e[type=item,limit=1,sort=nearest] Item.tag
execute positioned ~ ~-5 ~ run kill @e[type=item,limit=1,sort=nearest]
