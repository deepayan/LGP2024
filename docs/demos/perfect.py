
def aliquot_sum(n):
    if n == 1:
        return 1
    s = 1
    i = 2
    while i * i < n:
        if n % i == 0:
            s = s + i + (n // i)
        i = i + 1
    return s


k = 1
while True:
    print('\r%s' % (k), end = '')
    ## cat("\r", k)
    if aliquot_sum(k) == k:
        print('')
    k = k + 1

