playsound stellarity:item.cooldown_end player @s ~ ~ ~

title @s actionbar {"translate":"stellarity.items.spellbooks.notification","color":"dark_purple","with":[{"translate":"stellarity.items.spellbooks.return"}]}

# Failsafe
tag @s remove stellarity.book_of_return.in_animation
tag @s remove stellarity.book_of_return.teleport
