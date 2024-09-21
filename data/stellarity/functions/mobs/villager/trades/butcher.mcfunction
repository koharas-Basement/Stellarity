scoreboard players set in stellarity.misc 1
scoreboard players set in1 stellarity.misc 2
function stellarity:utils/rng/range
execute if score out stellarity.misc matches 1 run data modify storage stellarity:temp villager_trades append value {maxUses:9,rewardExp:1b,priceMultiplier:0.05,demand:9,specialPrice:0,buy:{id:"chicken",Count:12,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"emerald",Count:2,tag:{}}}
execute if score out stellarity.misc matches 2 run data modify storage stellarity:temp villager_trades append value {maxUses:9,rewardExp:1b,priceMultiplier:0.05,demand:9,specialPrice:0,buy:{id:"porkchop",Count:6,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"emerald",Count:2,tag:{}}}

scoreboard players set in stellarity.misc 1
scoreboard players set in1 stellarity.misc 2
function stellarity:utils/rng/range
execute if score out stellarity.misc matches 1 run data modify storage stellarity:temp villager_trades append value {maxUses:9,rewardExp:1b,priceMultiplier:0.05,demand:9,specialPrice:0,buy:{id:"mutton",Count:6,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"emerald",Count:2,tag:{}}}
execute if score out stellarity.misc matches 2 run data modify storage stellarity:temp villager_trades append value {maxUses:9,rewardExp:1b,priceMultiplier:0.05,demand:9,specialPrice:0,buy:{id:"beef",Count:9,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"emerald",Count:2,tag:{}}}

data modify storage stellarity:temp villager_trades append value {maxUses:8,rewardExp:1b,priceMultiplier:0.1,demand:8,specialPrice:0,buy:{id:"coal",Count:15,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"emerald",Count:2,tag:{}}}

data modify storage stellarity:temp villager_trades append value {maxUses:4,rewardExp:1b,priceMultiplier:0.1,demand:4,specialPrice:0,buy:{id:"emerald",Count:2,tag:{}},buyB:{id:"air",Count:1,tag:{}},sell:{id:"rabbit_stew",Count:1,tag:{}}}
