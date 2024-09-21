tp @s ~ ~1 ~

playsound stellarity:block.end_portal.travel ambient @s ~ ~1 ~ 1 1
playsound block.portal.travel ambient @s ~ ~ ~ 0.25 1

particle flash ~ ~1 ~ 0 0 0 1 1 force @a

particle reverse_portal ~ ~1 ~ 1 1 1 .02 50 normal @a[distance=0..]

particle dragon_breath ~ ~1 ~ 0 0 0 .03 15 normal
particle dragon_breath ~ ~1 ~ 0 0 0 .06 15 normal

function stellarity:sfx/enter_leave_end_wave

tag @s remove stellarity.book_of_return.in_animation
tag @s remove stellarity.book_of_return.teleport

scoreboard players set @s stellarity.items.spellbook.return.cooldown 180
