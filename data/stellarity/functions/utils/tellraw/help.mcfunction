tellraw @s " "
$tellraw @s [{"text": "| ","color":"gray","bold":true},{"text":"$(command)","color": "#C076E5","bold":false,"clickEvent":{"action": "suggest_command","value": "/function stellarity:cmd/$(command)"},"hoverEvent": {"action": "show_text","value": [{"text": "/function stellarity:cmd/$(command)","color":"#DFDFDF"},"\n",{"text": "Click to run","color":"#CEADD6"}]}}]

$tellraw @s {"text":"$(description)","color":"#C8ADD6"}