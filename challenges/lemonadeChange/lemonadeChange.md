# lemonadeChange

## Problem

At a lemonade stand, each lemonade costs $5. 

Customers are standing in a queue to buy from you, and order one at a time. 

Each customer will only buy one lemonade and pay with either a $5, $10, or $20 bill.  You must provide the correct change (you only have $20, $10, and $5 bills) to each customer, so that the net transaction is that the customer pays $5.

The cash register is initally empty. 

Return true if and only if you can provide every customer with correct change.

## Examples

### Example 1
```
Input: [10,10]

Output: false

Explanation: 
For the first customer, we don't have any $5 bills to give back. 
```

### Example 2
```
Input: [5,10]

Output: true

Explanation: 
For the first customer, we take the $5 bill and don't give back any change.
For the second customer, we take the $10 bill and return the $5 we have in the cash register.
```

### Example 3
```
Input: [5,5,5,10,20]

Output: true 

Explanation:
From the first 3 customers, we collect three $5 bills in order.
From the fourth customer, we collect a $10 bill and give back a $5.
From the fifth customer, we give a $10 bill and a $5 bill.
Since all customers got correct change, we output true.
```

### Example 4
```
Input: [5,5,10,10,20]

Output: false

Explanation: 
From the first two customers in order, we collect two $5 bills.
For the next two customers in order, we collect a $10 bill and give back a $5 bill.
For the last customer, we can't give change of $15 back because we only have two $10 bills.
Since not every customer received correct change, the answer is false.
```

[Source](https://leetcode.com/problems/lemonade-change/)
