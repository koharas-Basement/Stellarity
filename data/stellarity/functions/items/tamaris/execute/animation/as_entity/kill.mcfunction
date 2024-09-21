execute at @s run function stellarity:items/tamaris/execute/animation/as_entity/at_self

advancement grant @p[predicate=stellarity:items/holding/tamaris,predicate=kohara:player/is_sneaking] only stellarity:dragons_den/disassembly
execute if entity @s[type=warden] run advancement grant @p[predicate=stellarity:items/holding/tamaris,predicate=kohara:player/is_sneaking] only stellarity:dragons_den/kill_la_kill

function stellarity:items/tamaris/execute/blood_for_blood
