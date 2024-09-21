# {"text": "| ","color":"gray","bold":true}
# {"text": "⭐","color":"gold","bold":true}
# 🌍 🔨 ⬛ ⚙ 📕 💬 ⭐ ❓ ❗
# ▪

tellraw @s {"text": "| ","color":"gray","bold":true}

tellraw @s [\
	{"text": "| ","color":"gray","bold":true},\
	{"text": "⭐","color":"gold","bold":true},\
	{"text": " Stellarity ","bold":true,"color":"#ff76e1"},\
	{"text": "⭐","color":"gold","bold":true},\
	{"text":" has succesfully loaded!","bold":false,"color":"#DF9BDC"}\
	]

tellraw @s [\
	{"text": "| ","color":"gray","bold":true},\
	{"text": "     Cʀᴇᴀᴛᴇᴅ ʙʏ ","bold":false,"color":"#BB80B9","italic":true},\
	{"text":"ᴋᴏʜᴀʀᴀ","bold":true,"color":"#AA5096","italic":true}\
	]

tellraw @s {"text": "| ","color":"gray","bold":true}

function stellarity:tellraw/motd
tellraw @s [\
	{"text": "| ","color":"gray","bold":true},\
	{"text": "' ","color":"yellow","bold":false},\
	{"nbt":"motd","storage":"stellarity:temp","interpret":false},\
	{"text": " '","color":"yellow","bold":false}\
	]

tellraw @s {"text": "| ","color":"gray","bold":true}

## Useful Links
tellraw @s [{"text": "| ","color":"gray","bold":true},{"text":"Usᴇғᴜʟ Lɪɴᴋs","color":"gray","bold":false,"italic":true}]
tellraw @s [\
	{"text": "| ","color":"gray","bold":true},\
	{"text":" 📕 ","color":"#FF5D16","bold":true},\
	{"text":"Wiki","color":"#FBA957","bold":false,"clickEvent": {"action": "open_url","value": "https://stellarity.kohara.xyz/"},"hoverEvent": {"action": "show_text","contents":{"text":"Click to visit"}}},\
	{"text": " ▪ ","color":"gray","bold":true},\
	{"text":"💬 ","color":"#5865F2","bold":true},\
	{"text":"Discord","color":"#589CF2","bold":false,"clickEvent": {"action": "open_url","value": "https://discord.kohara.xyz/"},"hoverEvent": {"action": "show_text","contents":{"text":"Click to visit"}}},\
	{"text": " ▪ ","color":"gray","bold":true},\
	{"text":"⚙ ","color":"#C2C2C2","bold":true},\
	{"text":"Config","color":"#DCDCDC","bold":false,"clickEvent": {"action": "run_command","value": "/function stellarity:cmd/configuration"},"hoverEvent": {"action": "show_text","contents":{"text":"Click to edit"}}}\
	]

tellraw @s [\
	{"text": "| ","color":"gray","bold":true},\
	{"text":" ⭐ ","color":"#FF5E5B","bold":true},\
	{"text":"Ko-Fi","color":"#FF8987","bold":false,"clickEvent": {"action": "open_url","value": "https://ko-fi.com/kohara"},"hoverEvent": {"action": "show_text","contents":{"text":"Click to visit"}}},\
	{"text": " ▪ ","color":"gray","bold":true},\
	{"text":"❓ ","color":"#E70000","bold":true},\
	{"text":"FAQ","color":"white","bold":false,"clickEvent": {"action": "open_url","value": "https://stellarity.kohara.xyz/wiki/faq"},"hoverEvent": {"action": "show_text","contents":{"text":"Click to read"}}},{"text": " ▪ ","color":"gray","bold":true},{"text":"❗ ","color":"#E70000","bold":true},\
	{"text":"Troubleshooting","color":"#FF5959","bold":false,"clickEvent": {"action": "open_url","value": "https://stellarity.kohara.xyz/wiki/troubleshooting"},"hoverEvent": {"action": "show_text","contents":{"text":"Click to read"}}}\
	]

tellraw @s {"text": "| ","color":"gray","bold":true}

## Project Pages
tellraw @s [{"text": "| ","color":"gray","bold":true},{"text":"Pʀᴏᴊᴇᴄᴛ Pᴀɢᴇ","color":"gray","bold":false,"italic":true}]

# PlanetMinecraft
tellraw @s [{"text": "| ","color":"gray","bold":true},{"text":" 🌍 ","color":"#3DA2FF","bold":true},{"text":"PlanetMinecraft","color":"#7DEA00","bold":false,"clickEvent": {"action": "open_url","value": "https://planetminecraft.com/data-pack/fokastudio-s-ender-expansion"},"hoverEvent": {"action": "show_text","contents":{"text":"Click to visit"}}}]

# CurseForge
tellraw @s [{"text": "| ","color":"gray","bold":true},{"text":" 🔨 ","color":"#D85831","bold":true},{"text":"CurseForge","color":"#FF683A","bold":false,"clickEvent": {"action": "open_url","value": "https://curseforge.com/minecraft/mc-mods/stellarity"},"hoverEvent": {"action": "show_text","contents":{"text":"Click to visit"}}}]

# Modrinth
tellraw @s [{"text": "| ","color":"gray","bold":true},{"text":" ⏺ ","color":"#17B556","bold":true},{"text":"Modrinth","color":"#21FF79","bold":false,"clickEvent": {"action": "open_url","value": "https://modrinth.com/datapack/stellarity"},"hoverEvent": {"action": "show_text","contents":{"text":"Click to visit"}}}]

tellraw @s {"text": "| ","color":"gray","bold":true}

playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.5
