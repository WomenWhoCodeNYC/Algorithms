def series_sum(n):
    total = 0
    for num in range(0, n):
        total += 1/(num*3.0 + 1)

    return total
#print series_sum(1)
#print series_sum(4)

#submitted by https://github.com/jungjung917
