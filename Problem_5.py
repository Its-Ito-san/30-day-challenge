from math import gcd
from functools import reduce

def lcm(a, b):
    return a * b // gcd(a, b)

result = reduce(lcm, range(1, 21))
print(result)
