scoreboard players set #hit stellarity.misc 1

execute align xyz unless entity @e[type=marker,tag=stellarity.end_portal,distance=..5] run summon marker ~0.5 ~0.5 ~0.5 {Tags:["stellarity.end_portal_animation","stellarity.end_portal_animation.check_schedule"],NoGravity:1b}
