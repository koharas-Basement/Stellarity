data modify storage stellarity:temp villager_trades append value {maxUses:16,rewardExp:1b,priceMultiplier:0.05,demand:16,specialPrice:0,buy:{id:"end_stone",Count:48,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"emerald",Count:1,tag:{}}}

data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"emerald",Count:1,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"purpur_block",Count:4,tag:{}}}

data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"popped_chorus_fruit",Count:10,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"emerald",Count:1,tag:{}}}

data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"emerald",Count:1,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"purpur_pillar",Count:6,tag:{}}}

data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"emerald",Count:1,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"quartz",Count:4,tag:{}}}

data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"emerald",Count:1,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"quartz_pillar",Count:2,tag:{}}}

data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"emerald",Count:1,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"quartz_block",Count:2,tag:{}}}

scoreboard players set in stellarity.misc 1
scoreboard players set in1 stellarity.misc 2
function stellarity:utils/rng/range
execute if score out stellarity.misc matches 1 run data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"emerald",Count:18,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"angler_pottery_sherd",Count:1,tag:{}}}
execute if score out stellarity.misc matches 2 run data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"emerald",Count:18,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"brewer_pottery_sherd",Count:1,tag:{}}}

scoreboard players set in stellarity.misc 1
scoreboard players set in1 stellarity.misc 2
function stellarity:utils/rng/range
execute if score out stellarity.misc matches 1 run data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"emerald",Count:18,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"archer_pottery_sherd",Count:1,tag:{}}}
execute if score out stellarity.misc matches 2 run data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"emerald",Count:18,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"friend_pottery_sherd",Count:1,tag:{}}}

scoreboard players set in stellarity.misc 1
scoreboard players set in1 stellarity.misc 2
function stellarity:utils/rng/range
execute if score out stellarity.misc matches 1 run data modify storage stellarity:temp villager_trades append value {maxUses:16,rewardExp:1b,priceMultiplier:0.05,demand:16,specialPrice:0,buy:{id:"cooked_cod",Count:1,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"amethyst_shard",Count:2,tag:{}}}
execute if score out stellarity.misc matches 2 run data modify storage stellarity:temp villager_trades append value {maxUses:16,rewardExp:1b,priceMultiplier:0.05,demand:16,specialPrice:0,buy:{id:"cooked_cod",Count:1,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"quartz",Count:2,tag:{}}}
loot spawn ~ ~-5 ~ loot stellarity:items/fish/amethyst_budfish
execute positioned ~ ~-5 ~ run data modify storage stellarity:temp villager_trades[-1].buy.tag set from entity @e[type=item,limit=1,sort=nearest] Item.tag
execute positioned ~ ~-5 ~ run kill @e[type=item,limit=1,sort=nearest]
