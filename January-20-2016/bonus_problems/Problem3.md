##Clique

A clique in a graph is set of nodes such that there is an edge between any two distinct nodes in the set. Finding the largest clique in a graph is a computationally tough problem. Currently no polynomial time algorithm is known for solving this. However, you wonder what is the minimum size of the largest clique in any graph with N nodes and M edges.

### Input Format:
The first line contains T the number of test cases. Each of the next T lines contain 2 integers : N, M

### Output Format:
Output T lines, one for each test case, containing the desired answer for the corresponding test case.

### Constraints :
* 1 <= T <= 100000
* 2 <= N <= 10000
* 1 <= M <= N*(N-1)/2

### Sample Input
* 3
* 3 2
* 4 6
* 5 7

### Sample Output
* 2
* 4
* 3

###Explanation
For the second test case, the only valid graph having 4 nodes and 6 edges is one where each pair of nodes is connected. So the size of the largest clique cannot be smaller than 4.
For the third test case, it is easy to verify that any graph with 5 nodes and 7 edges will surely have a clique of size 3 or more.

Hints: Turan's theorem gives us an upper bound on the number of edges a graph can have if we wish that it should not have a clique of size x. Though the bound is not exact, it is easy to extend the statement of the theorem to get an exact bound in terms of n and x. Once this is done, we can binary search for the largest x such that f(n,x) <= m. See: Turan's Theorem: https://en.wikipedia.org/wiki/Tur%C3%A1n%27s_theorem

Source: https://www.hackerrank.com/challenges/clique
