#include <iostream>
#include <unordered_set>
#include <vector>
#include <algorithm>
#include <iterator>

using namespace std;


/*
author: Shoshana Biro
git user name: sbiro
*/

/*
Array pairsum

input 3, 8, 6, 11, 94, 1
sum = 9

input:
14
11
7 3 8 6 11 94 1 7 20 -6 3

find all the pairs that add up to sum
different cases:
double number e.g 7 + 7 = 14
double summand: e.g 11+3 =14 and 3 appears twice.
output: [[6, 3], [1, 8]]
output:[[6, 8], [7, 7], [20, -6], [11, 3]]
*/

vector<pair<int, int>> arraypairsum(vector<int> v, int sum)
{
	unordered_multiset<int> um;
	vector<pair<int, int>> res;
	for (const auto &c : v)
		um.insert(c);

	for (int i=0; i < um.size(); )
	{
		int c = *um.begin();
		int diff = sum - c;
		auto range = um.equal_range(diff);
		int dist = distance(range.first, range.second);
		if (dist == 0)
		{
			um.erase(c);
			continue;
		}
		res.push_back(make_pair(*range.first, c));
		if (dist == 1)
		{
			um.erase(c);
			um.erase(range.first);
		}
		else
		{
			auto it1 = range.first;
			auto it2 = prev(range.second);
			um.erase(it1);		
			if (diff != c)
				um.erase(c);
			else
				um.erase(it2);
		}
		
		if (um.size() <= 1)
			break;
	}
	return res;
}

int main()
{
	
	int sum;
	cin >> sum;
	int n;
	cin >> n;
	vector<int> v;
	for (int i = 0; i < n; ++i)
	{
		int t;
		cin >> t;
		v.push_back(t);
	}
	vector<pair<int, int>> res = arraypairsum(v, sum);
	// [[3, 6], [8, 1]] 
	cout << "[" ;
	int i = 0;
	for (const auto &p : res)
	{
		cout << "[" << p.first << ", " << p.second << "]" ;
		i++;
		if (i < res.size())
			cout << ", ";
	}
	cout << "]" << endl;
	return 0;
}
