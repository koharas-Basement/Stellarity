# Death with keepInventory resets players Attributes, effectively deleting
# my full set bonus. It can be fixed by just equiping and unequiping a single armor piece,
# but who would even want to do that?
# Here I attempt to add my modifier every 10 seconds to prevent this
# Not the most efficient way, but it works at least... ig...

attribute @s generic.attack_damage modifier add 5ec8048e-f25b-11ec-b939-0242ac120002 "attack_boost" 0.5 multiply

