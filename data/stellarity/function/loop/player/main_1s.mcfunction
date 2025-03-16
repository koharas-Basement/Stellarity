# Cooldowns
execute if entity @s[scores={stellarity.items.spellbook.conveyance.cooldown=0..}] run function stellarity:item/spellbooks/conveyance/cooldown_countdown
execute if entity @s[scores={stellarity.items.spellbook.updraft.cooldown=0..}] run function stellarity:item/spellbooks/updraft/cooldown_countdown
execute if entity @s[scores={stellarity.items.spellbook.light.cooldown=0..}] run function stellarity:item/spellbooks/light/cooldown_countdown
execute if entity @s[scores={stellarity.items.spellbook.jinx.cooldown=0..}] run function stellarity:item/spellbooks/jinx/cooldown_countdown
execute if entity @s[scores={stellarity.items.spellbook.return.cooldown=0..}] run function stellarity:item/spellbooks/return/cooldown_countdown

execute if entity @s[scores={stellarity.items.porta_altar.cooldown=0..}] run scoreboard players remove @s stellarity.items.porta_altar.cooldown 1

execute if entity @s[scores={stellarity.items.aery_sword.cryonics.cooldown=0..}] run scoreboard players remove @s stellarity.items.aery_sword.cryonics.cooldown 1

execute if entity @s[tag=stellarity.flesh_piglin.aggro_target] run function stellarity:mob/flesh_piglin/set_follow_range_1s_loop

scoreboard players reset @s stellarity.misc.loop.1s

#scoreboard players add @s stellarity.misc.loop.10s 1
#execute if entity @s[scores={stellarity.misc.loop.10s=10..}] run function stellarity:loop/player/main_10s
