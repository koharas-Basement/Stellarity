# Conveyance
execute as @e[type=marker,tag=stellarity.book_of_conveyance] at @s run function stellarity:items/spellbooks/conveyance/loop

# Updraft
execute as @a[tag=stellarity.book_of_updraft.animation] at @s run function stellarity:items/spellbooks/updraft/animation

# Light
execute as @e[type=marker,tag=stellarity.book_of_light.aura] at @s run function stellarity:items/spellbooks/light/aura_loop

# Nature's Wrath
execute as @e[type=marker,tag=stellarity.natures_wrath.spirit] at @s run function stellarity:items/spellbooks/natures_wrath/spirit/loop
execute as @e[type=wolf,tag=stellarity.natures_wrath.spirit_wolf] at @s run function stellarity:items/spellbooks/natures_wrath/wolves/loop
