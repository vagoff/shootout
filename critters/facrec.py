import sys
import math
sys.setrecursionlimit(999000)

def fac(x):
    if x < 2:
        return 1
    return x * fac(x - 1)

print(math.log10( fac(int(sys.argv[1])) ))
