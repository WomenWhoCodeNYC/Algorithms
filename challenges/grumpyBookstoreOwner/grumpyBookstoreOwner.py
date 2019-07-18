def grumpyBookstoreOwner(customers, grumpy, X):
    nongrumpsum = sum([customers[i] for i in range(len(customers)) if grumpy[i] != 1])
    customers = [customers[i] if grumpy[i] == 1 else 0 for i in range(len(customers))]
    sumextra = maxextra = sum(customers[:X])
    for i in range(X, len(customers)):
        sumextra += customers[i] - customers[i-X]
        maxextra = max(maxextra, sumextra)
    return maxextra + nongrumpsum

assert grumpyBookstoreOwner([1,0,1,2,1,1,7,5], [0,1,0,1,0,1,0,1], 3)
