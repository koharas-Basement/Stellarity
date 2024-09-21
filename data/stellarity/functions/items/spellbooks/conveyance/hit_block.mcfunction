execute as @a if score @s stellarity.items.spellbook.conveyance.id = @e[type=marker,limit=1,sort=nearest,tag=stellarity.book_of_conveyance] stellarity.items.spellbook.conveyance.id run function stellarity:items/spellbooks/conveyance/teleport_player

kill @s

execute at @p run playsound item.chorus_fruit.teleport player @a ~ ~1 ~
execute at @p run particle dust_color_transition 0.435 0 1 1 0.898 0.122 1 ~ ~1 ~ .3 .55 .3 0 80 force
