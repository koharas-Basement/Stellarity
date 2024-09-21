data modify storage stellarity:temp villager_trades append value {maxUses:16,rewardExp:1b,priceMultiplier:0.05,demand:16,specialPrice:0,buy:{id:"white_wool",Count:14,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"emerald",Count:1,tag:{}}}

data modify storage stellarity:temp villager_trades append value {maxUses:16,rewardExp:1b,priceMultiplier:0.05,demand:16,specialPrice:0,buy:{id:"white_wool",Count:8,tag:{}},buyB:{id:"emerald",Count:1,tag:{}},sell:{id:"magenta_wool",Count:8,tag:{}}}

data modify storage stellarity:temp villager_trades append value {maxUses:16,rewardExp:1b,priceMultiplier:0.05,demand:16,specialPrice:0,buy:{id:"white_wool",Count:8,tag:{}},buyB:{id:"emerald",Count:1,tag:{}},sell:{id:"purple_wool",Count:8,tag:{}}}

data modify storage stellarity:temp villager_trades append value {maxUses:16,rewardExp:1b,priceMultiplier:0.05,demand:16,specialPrice:0,buy:{id:"white_wool",Count:8,tag:{}},buyB:{id:"emerald",Count:1,tag:{}},sell:{id:"black_wool",Count:8,tag:{}}}

data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"emerald",Count:1,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"black_banner",Count:2,tag:{}}}

data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"emerald",Count:1,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"magenta_banner",Count:2,tag:{}}}

data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"emerald",Count:1,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"purple_banner",Count:2,tag:{}}}

data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.05,demand:12,specialPrice:0,buy:{id:"emerald",Count:3,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"shears",Count:1,tag:{}}}

scoreboard players set in stellarity.misc 1
scoreboard players set in1 stellarity.misc 4
function stellarity:utils/rng/range
execute if score out stellarity.misc matches 1 run data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.3,demand:12,specialPrice:0,buy:{id:"emerald",Count:8,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"painting",Count:2,tag:{EntityTag:{variant:"earth"}}}}
execute if score out stellarity.misc matches 2 run data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.3,demand:12,specialPrice:0,buy:{id:"emerald",Count:8,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"painting",Count:2,tag:{EntityTag:{variant:"fire"}}}}
execute if score out stellarity.misc matches 3 run data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.3,demand:12,specialPrice:0,buy:{id:"emerald",Count:8,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"painting",Count:2,tag:{EntityTag:{variant:"water"}}}}
execute if score out stellarity.misc matches 4 run data modify storage stellarity:temp villager_trades append value {maxUses:12,rewardExp:1b,priceMultiplier:0.3,demand:12,specialPrice:0,buy:{id:"emerald",Count:8,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"painting",Count:2,tag:{EntityTag:{variant:"wind"}}}}
