# Levitation nerf
tag @s add stellarity.shulker.scheduled
schedule function stellarity:mobs/shulker/scheduled 1t append

# On-hit effects
execute if entity @s[advancements={stellarity:events/hit_with_shulker_bullet_end_city={normal_shulker=true}}] run function stellarity:mobs/shulker/effects/normal
execute if entity @s[advancements={stellarity:events/hit_with_shulker_bullet_end_city={black_shulker=true}}] run function stellarity:mobs/shulker/effects/black
execute if entity @s[advancements={stellarity:events/hit_with_shulker_bullet_end_city={lime_shulker=true}}] run function stellarity:mobs/shulker/effects/lime
execute if entity @s[advancements={stellarity:events/hit_with_shulker_bullet_end_city={white_shulker=true}}] run function stellarity:mobs/shulker/effects/white
execute if entity @s[advancements={stellarity:events/hit_with_shulker_bullet_end_city={blue_shulker=true}}] run function stellarity:mobs/shulker/effects/blue
execute if entity @s[advancements={stellarity:events/hit_with_shulker_bullet_end_city={pink_shulker=true}}] run function stellarity:mobs/shulker/effects/pink
execute if entity @s[advancements={stellarity:events/hit_with_shulker_bullet_end_city={magenta_shulker=true}}] run function stellarity:mobs/shulker/effects/magenta
execute if entity @s[advancements={stellarity:events/hit_with_shulker_bullet_end_city={purple_shulker=true}}] run function stellarity:mobs/shulker/effects/purple
execute if entity @s[advancements={stellarity:events/hit_with_shulker_bullet_end_city={orange_shulker=true}}] run function stellarity:mobs/shulker/effects/orange
execute if entity @s[advancements={stellarity:events/hit_with_shulker_bullet_end_city={purple_shulker=true}}] run function stellarity:mobs/shulker/effects/purple
execute if entity @s[advancements={stellarity:events/hit_with_shulker_bullet_end_city={red_shulker=true}}] run function stellarity:mobs/shulker/effects/red

advancement revoke @s only stellarity:events/hit_with_shulker_bullet_end_city
