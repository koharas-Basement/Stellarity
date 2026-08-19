# {"text": "| ","color":"gray","bold":true}
# {"text": "⭐","color":"gold","bold":true}
# 🌍 🔨 ⬛ ⚙ 📕 💬 ⭐ ❓ ❗
# ▪


tellraw @s [\
{"text": "| ","color":"gray","bold":true},\
{"text": "⭐","color":"gold","bold":true},\
{"text": " ¡HexaMC ","bold":true,"color":"#ff76e1"},\
{"text": "⭐","color":"gold","bold":true},\
{"text":" recargado!","bold":false,"color":"#DF9BDC"}\
]

tellraw @s {"text": "| ","color":"gray","bold":true}

function stellarity:tellraw/motd
tellraw @s [\
{"text": "| ","color":"gray","bold":true},\
{"text": "' ","color":"yellow","bold":false},\
{"nbt":"motd","storage":"stellarity:temp","interpret":false},\
{"text": " '","color":"yellow","bold":false}\
]


playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 1.5
