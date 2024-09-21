# If not sneaking, swimming or crawling
execute unless predicate fokastudio:end/utils/player/is_swimming unless predicate fokastudio:end/utils/player/is_sneaking if block ~ ~1 ~ #fokastudio:end/non_solid run particle dragon_breath ~ ~1.7 ~ 0 0 0 0.01 1 normal

# If not swimming or crawling
execute unless predicate fokastudio:end/utils/player/is_swimming if block ~ ~1 ~ #fokastudio:end/non_solid run particle dragon_breath ~ ~1.4 ~ 0 0 0 0.01 1 normal
execute unless predicate fokastudio:end/utils/player/is_swimming if block ~ ~1 ~ #fokastudio:end/non_solid run particle dragon_breath ~ ~1.1 ~ 0 0 0 0.01 1 normal
execute unless predicate fokastudio:end/utils/player/is_swimming if block ~ ~1 ~ #fokastudio:end/non_solid run particle dragon_breath ~ ~0.8 ~ 0 0 0 0.01 1 normal

# Always, regardless of player's movement actions
particle dragon_breath ~ ~0.5 ~ 0 0 0 0.01 1 normal
particle dragon_breath ~ ~0.2 ~ 0 0 0 0.01 1 normal

# Extra particles if not swimming or crawling
execute unless predicate fokastudio:end/utils/player/is_swimming if block ~ ~1 ~ #fokastudio:end/non_solid run execute if predicate fokastudio:end/utils/chance/33percent run particle end_rod ~ ~1.4 ~ 0 0 0 0.01 1 normal
execute unless predicate fokastudio:end/utils/player/is_swimming if block ~ ~1 ~ #fokastudio:end/non_solid run execute if predicate fokastudio:end/utils/chance/33percent run particle end_rod ~ ~0.8 ~ 0 0 0 0.01 1 normal
