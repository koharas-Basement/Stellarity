# Shulker Tools
execute if entity @s[predicate=stellarity:items/holding/any_shulker_tool] run effect give @s haste 2 0 true

# Duskberry Night Vision
execute if entity @s[predicate=stellarity:items/holding/trinkets/duskberry] run effect give @s night_vision 12 0 true

# Cooldowns
execute if entity @s[scores={stellarity.items.spellbook.conveyance.cooldown=0..}] run function stellarity:items/spellbooks/conveyance/cooldown_countdown
execute if entity @s[scores={stellarity.items.spellbook.updraft.cooldown=0..}] run function stellarity:items/spellbooks/updraft/cooldown_countdown
execute if entity @s[scores={stellarity.items.spellbook.light.cooldown=0..}] run function stellarity:items/spellbooks/light/cooldown_countdown
execute if entity @s[scores={stellarity.items.spellbook.natures_wrath.cooldown.wolves=0..}] run function stellarity:items/spellbooks/natures_wrath/cooldown_countdown/wolves
execute if entity @s[scores={stellarity.items.spellbook.jinx.cooldown=0..}] run function stellarity:items/spellbooks/jinx/cooldown_countdown
execute if entity @s[scores={stellarity.items.spellbook.return.cooldown=0..}] run function stellarity:items/spellbooks/return/cooldown_countdown

execute if entity @s[scores={stellarity.items.aery_sword.cryonics.cooldown=0..}] run scoreboard players remove @s stellarity.items.aery_sword.cryonics.cooldown 1

scoreboard players reset @s stellarity.misc.loop.1s
