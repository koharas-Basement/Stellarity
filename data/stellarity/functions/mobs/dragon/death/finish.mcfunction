# Moved from some Far End function I cannot remember
function far_end:structures/exit_portal/activated/generate

execute unless score #stellarity.config stellarity.config.always_generate_egg matches 1 if score @s fe.variable matches 1 run setblock ~ ~5 ~ minecraft:dragon_egg
execute if score #stellarity.config stellarity.config.always_generate_egg matches 1 run setblock ~ ~5 ~ minecraft:dragon_egg

execute if score @s fe.variable matches 1 run particle minecraft:poof ~ ~5 ~ 0 0 0 0.3 50 force

execute unless score #stellarity.exit_gateway_count stellarity.misc matches 20.. run function far_end:structures/exit_portal/gateway/choose_location

bossbar set fe:ender_dragon players

tag @s remove fe.activated

execute as @e[type=marker,tag=stellarity.dragon_marker] at @s run function stellarity:mobs/dragon/death/finish_as_marker

scoreboard players reset @s fe.timer

## Advancement
## They are in reverse order for a reason I cannot remember,
## but I think it was somewhat important :/
# 'God Slayer'
advancement grant @a[distance=..100,advancements={minecraft:end/kill_dragon=true,stellarity:dragons_den/god_slayer=false}] only stellarity:dragons_den/god_slayer
# 'Free The End'
advancement grant @a[distance=..100,advancements={minecraft:end/kill_dragon=false}] only minecraft:end/kill_dragon

# Activate Altar of The Accursed. Now we shall all witness horrible dark magic emerging and crafting fantastic gear!
# Wonderful! Like ancient forces of darkness were always supposed to just miraculously connect some random
# trash into things that are a lot better!
execute as @e[type=marker,tag=stellarity.altar_of_accursed,tag=!stellarity.aota_activated] at @s run function stellarity:mechanics/altar_crafting/aota_activate

# 500 seconds is about 8.3 minutes
scoreboard players set #stellarity.dragon.ash_duration stellarity.misc 500

schedule function stellarity:mobs/dragon/play_track 3s
