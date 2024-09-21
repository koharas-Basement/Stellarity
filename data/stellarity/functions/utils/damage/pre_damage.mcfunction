# Fail execute if Totem of Undying is used
# or Holy Protection invulnerability is triggered
tag @s[predicate=kohara:holding_a_totem] add stellarity.tag
execute if entity @s[tag=stellarity.tag,tag=stellarity.damage.tamaris_execute] as @p[tag=kohara.attacker] at @s run function stellarity:items/tamaris/execute/fail
execute if entity @s[type=player,tag=stellarity.holy_protection,tag=stellarity.damage.tamaris_execute] as @p[tag=kohara.attacker] at @s run function stellarity:items/tamaris/execute/fail
