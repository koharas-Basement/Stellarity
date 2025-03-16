function stellarity:mechanic/void_fishing/as_aec/fish_approaching/particles

execute store result storage stellarity:temp void_fishing.fish_approaching.random_deviation double 0.01 run random value -100..100
function stellarity:mechanic/void_fishing/as_aec/fish_approaching/random_deviation with storage stellarity:temp void_fishing.fish_approaching
