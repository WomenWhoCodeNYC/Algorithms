
def coin_combos (amount, coins):
    # assert that coins is a list and amount is an integer
    assert isinstance(coins, list)
    assert isinstance(amount, int)
    # sort the coins in reverse order
    coins = sorted(coins, reverse = True)
    # base cases
    if amount < 0 or len(coins) == 0:
        return 0
    if amount == 0:
        return 1
    # recurse until base cases are reached
    return coin_combos(amount - coins[0], coins) + coin_combos(amount, coins[1:])


coin_combos(8, [4, 2, 1]) # should output 9
