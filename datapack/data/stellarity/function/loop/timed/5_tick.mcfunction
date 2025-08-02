# Villagers
  execute as @e[\
  type=villager,\
  tag=stellarity.villager,\
  tag=!stellarity.villager.nitwit,\
  tag=!stellarity.villager.level_5 \
  ] at @s run function stellarity:entity/villager/main

schedule function stellarity:loop/timed/5_tick 5t
