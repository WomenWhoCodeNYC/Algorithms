def timesforfinalclose(times):

    array_Init = []
    for i in range(0,times):
        array_Init.append(0)
    for n in range(1,times+1):
    	for i in range(n, times):
	    if i % n == 0:
	    	array_Init[i-1] = 1 - array_Init[i-1]
    return array_Init

print timesforfinalclose(100)

## submitted by [jungjung917](https://github.com/jungjung917)
