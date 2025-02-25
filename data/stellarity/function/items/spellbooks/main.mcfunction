## Called by 'items/main_marker.mcfunction'

# Conveyance
execute if entity @s[tag=stellarity.book_of_conveyance] run function stellarity:items/spellbooks/conveyance/loop

# Light
execute if entity @s[tag=stellarity.book_of_light.aura] run function stellarity:items/spellbooks/light/aura_loop

# Jinx
execute if entity @s[tag=stellarity.book_of_jinx] run function stellarity:items/spellbooks/jinx/loop

# Return
execute if entity @s[tag=stellarity.book_of_return] run function stellarity:items/spellbooks/return/loop
