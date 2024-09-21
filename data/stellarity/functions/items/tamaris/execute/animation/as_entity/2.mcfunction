tag @s remove stellarity.items.tamaris.in_execute

execute at @s run function stellarity:items/tamaris/execute/animation/as_entity/at_self

advancement grant @p[tag=stellarity.items.tamaris.doing_execute] only stellarity:dragons_den/disassembly
execute if entity @s[type=warden] run advancement grant @p[tag=stellarity.items.tamaris.doing_execute] only stellarity:dragons_den/kill_la_kill

function stellarity:items/tamaris/execute/blood_for_blood
