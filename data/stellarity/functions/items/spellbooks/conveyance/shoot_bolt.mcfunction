scoreboard players set @s stellarity.items.spellbook.conveyance.cooldown 320

scoreboard players add #stellarity.book_of_conveyance stellarity.items.spellbook.conveyance.id 1

execute anchored eyes positioned ^ ^ ^ rotated as @s run function stellarity:items/spellbooks/conveyance/spawn_marker

function stellarity:items/spellbooks/effects_all
playsound item.chorus_fruit.teleport player @a ~ ~1 ~ 0.22 0.5
