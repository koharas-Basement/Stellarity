###
#    public int nextInt(int bound) {
#        if (bound <= 0)
#            throw new IllegalArgumentException(BadBound);
#
#        int r = next(31);
#        int m = bound - 1;
#        if ((bound & m) == 0)  // i.e., bound is a power of 2
#            r = (int)((bound * (long)r) >> 31);
#        else {
#            for (int u = r; u - (r = u % bound) + m < 0; u = next(31));
#        }
#        return r;
#    }

function stellarity:utils/rng/lcg

scoreboard players operation #temp stellarity.misc = out stellarity.misc
scoreboard players operation out stellarity.misc %= #range stellarity.misc
scoreboard players operation #temp stellarity.misc -= out stellarity.misc
scoreboard players operation #temp stellarity.misc += #m1 stellarity.misc
execute if score #temp stellarity.misc matches ..-1 run function stellarity:utils/rng/zprivate/next_int
