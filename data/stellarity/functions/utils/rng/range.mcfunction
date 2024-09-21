### Cloud Notes ###
# Newton-Raphson, 4 iterations approach
#
# in = lower range
# in1 = upper range
# out = random number between range


scoreboard players add in1 stellarity.misc 1
scoreboard players operation #range stellarity.misc = in1 stellarity.misc
scoreboard players operation #range stellarity.misc -= in stellarity.misc

scoreboard players operation #m1 stellarity.misc = #range stellarity.misc
scoreboard players remove #m1 stellarity.misc 1
function stellarity:utils/rng/zprivate/next_int
scoreboard players operation out stellarity.misc += in stellarity.misc

scoreboard players reset #m1 stellarity.misc
scoreboard players remove in1 stellarity.misc 1
