scoreboard players set @s stellarity.items.spellbook.jinx.cooldown 10

execute anchored eyes positioned ^ ^ ^ rotated as @s run function stellarity:items/spellbooks/jinx/spawn_marker

function stellarity:items/spellbooks/effects_all

playsound minecraft:entity.wither.shoot player @a[distance=0..] ~ ~ ~ 0.5 0.9
