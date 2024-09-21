# LCG Seed implementation
#
# x_(n+1) = x_(n)*a + c
#
# a = 1103515245, c = 12345

scoreboard players operation #lcg stellarity.misc *= #lcg stellarity.misc2
scoreboard players add #lcg stellarity.misc 12345
scoreboard players operation out stellarity.misc = #lcg stellarity.misc
