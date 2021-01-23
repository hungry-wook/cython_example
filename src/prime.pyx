def primes_untyped(kmax):
    p = [None] * 1000 # Initialize the list to the max number of elements
    if kmax > 1000:
        kmax = 1000
    result = []
    k = 0
    n = 2
    while k < kmax:
        i = 0
        while i < k and n % p[i] != 0:
            i = i + 1
        if i == k:
            p[k] = n
            k = k + 1
            result.append(n)
        n = n + 1
    return result

def primes_typed(int kmax):
    cdef int i, k, n
    cdef int p[1000]
    if kmax > 1000:
        kmax = 1000
    result = []
    k = 0
    n = 2
    while k < kmax:
        i = 0
        while i < k and n % p[i] != 0:
            i = i + 1
        if i == k:
            p[k] = n
            k = k + 1
            result.append(n)
        n = n + 1
    return result
