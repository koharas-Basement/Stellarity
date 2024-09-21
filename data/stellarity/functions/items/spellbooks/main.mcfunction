## Called by 'items/main_marker.mcfunction'

# Conveyance
execute if entity @s[tag=stellarity.book_of_conveyance] run function stellarity:items/spellbooks/conveyance/loop

# Light
execute if entity @s[tag=stellarity.book_of_light.aura] run function stellarity:items/spellbooks/light/aura_loop

# Nature's Wrath
execute if entity @s[tag=stellarity.natures_wrath.spirit] run function stellarity:items/spellbooks/natures_wrath/spirit/loop
