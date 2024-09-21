execute as @a[tag=foka.ender_blessed,predicate=fokastudio:end/locations/in_the_end] run function fokastudio:end/mechanics/ends_blessing/apply_effects_end
execute as @a[tag=foka.ender_blessed,predicate=!fokastudio:end/locations/in_the_end] run function fokastudio:end/mechanics/ends_blessing/apply_effects_regular
