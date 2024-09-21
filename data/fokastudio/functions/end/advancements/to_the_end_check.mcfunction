execute as @a[predicate=!fokastudio:end/locations/in_the_end] at @s if block ~ ~-0.5 ~ end_portal run advancement grant @s only far_end:events/enter_end
execute as @a[predicate=!fokastudio:end/locations/in_the_end] at @s if block ~ ~ ~ end_portal run advancement grant @s only far_end:events/enter_end
execute as @a[predicate=!fokastudio:end/locations/in_the_end] at @s if block ~ ~0.5 ~ end_portal run advancement grant @s only far_end:events/enter_end
execute as @a[predicate=!fokastudio:end/locations/in_the_end] at @s if block ~ ~1 ~ end_portal run advancement grant @s only far_end:events/enter_end

# Is there a way to do this with predicates?
