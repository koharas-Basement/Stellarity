data modify storage stellarity:temp villager.trades append value {maxUses:16,rewardExp:1b,priceMultiplier:0.05,demand:16,specialPrice:0,buy:{id:"stick",Count:28,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"emerald",Count:1,tag:{}}}
data modify storage stellarity:temp villager.trades append value {maxUses:16,rewardExp:1b,priceMultiplier:0.05,demand:16,specialPrice:0,buy:{id:"emerald",Count:1,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"arrow",Count:16,tag:{}}}
data modify storage stellarity:temp villager.trades append value {maxUses:16,rewardExp:1b,priceMultiplier:0.05,demand:16,specialPrice:0,buy:{id:"arrow",Count:12,tag:{}},buyB:{id:"emerald",Count:1,tag:{}},sell:{id:"spectral_arrow",Count:12,tag:{}}}
data modify storage stellarity:temp villager.trades append value {maxUses:3,rewardExp:1b,priceMultiplier:0.1,demand:3,specialPrice:0,buy:{id:"emerald",Count:2,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"bow",Count:1,tag:{}}}
data modify storage stellarity:temp villager.trades append value {maxUses:3,rewardExp:1b,priceMultiplier:0.1,demand:3,specialPrice:0,buy:{id:"emerald",Count:3,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"crossbow",Count:1,tag:{}}}
data modify storage stellarity:temp villager.trades append value {maxUses:7,rewardExp:1b,priceMultiplier:0.05,demand:7,specialPrice:0,buy:{id:"string",Count:12,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"emerald",Count:1,tag:{}}}

scoreboard players set in stellarity.misc 1
scoreboard players set in1 stellarity.misc 2
function kohara:rng/range

execute if score #trade stellarity.misc matches 1 run data modify storage stellarity:temp villager.trades append value {maxUses:1,rewardExp:1b,priceMultiplier:0.5,demand:1,specialPrice:0,buy:{id:"crossbow",Count:1,tag:{}},buyB:{id:"emerald",Count:64,tag:{}},sell:{id:"crossbow",Count:1,tag:{}}}
execute if score #trade stellarity.misc matches 1 run loot spawn ~ ~-5 ~ loot stellarity:items/clockwork_crossbow
execute if score #trade stellarity.misc matches 1 positioned ~ ~-5 ~ run data modify storage stellarity:temp villager.trades[-1].sell.tag set from entity @e[type=item,limit=1,sort=nearest] Item.tag
execute if score #trade stellarity.misc matches 1 positioned ~ ~-5 ~ run kill @e[type=item,limit=1,sort=nearest]

execute if score #trade stellarity.misc matches 2 run data modify storage stellarity:temp villager.trades append value {maxUses:1,rewardExp:1b,priceMultiplier:0.5,demand:1,specialPrice:0,buy:{id:"bow",Count:1,tag:{}},buyB:{id:"emerald",Count:64,tag:{}},sell:{id:"bow",Count:1,tag:{}}}
execute if score #trade stellarity.misc matches 2 run loot spawn ~ ~-5 ~ loot stellarity:items/sharanga
execute if score #trade stellarity.misc matches 2 positioned ~ ~-5 ~ run data modify storage stellarity:temp villager.trades[-1].sell.tag set from entity @e[type=item,limit=1,sort=nearest] Item.tag
execute if score #trade stellarity.misc matches 2 positioned ~ ~-5 ~ run kill @e[type=item,limit=1,sort=nearest]
