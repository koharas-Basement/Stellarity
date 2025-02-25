scoreboard players set @s stellarity.items.spellbook.jinx.cooldown 15

execute anchored eyes positioned ^ ^ ^ rotated as @s run function stellarity:items/spellbooks/jinx/spawn_marker

function stellarity:items/spellbooks/effects_all

playsound stellarity:item.spellbook_cast player @a[distance=0..] ~ ~ ~
