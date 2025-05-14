# Stock Profit Picker
This Ruby program picks the best buy and sell dates from an array of stock prices.

### Parameters

- `stocks`: an array of numbers. The indices of the numbers represent the day that stock was that
price (0-indexed)

### Returns

An array formatted as `[buy_day, sell_day]`. Subtracting the second number from the first yields the
greatest possible profit from `stocks`.

## Methodology

The `stock_picker` method iterates over the given `stocks` array not once, but twice:

- once for each day one might consider buying the stock
  - once for each day one might consider selling the stock; since you cannot sell in the past, each
  of these days are _after_ the current iteration of the parent loop.

During these nested loops, the method calculates a new profit and checks if it's greater than the
current best profit, for each of the days. It will never check the final day as a potential "buy"
day, because there are no remaining days to sell on. It will also never calculate a loss, only
profits.

## Lessons Learned

Iterating over nested loops can be tricky, especially when it's the same set of data! I considered
splicing/slicing the array for the second loop, but doing so meant losing out on accurately tracking
a potential "sell day"'s index, which was needed to correctly return a buy/sell pair.

I assume there to be a better method of doing this, namely one that doesn't loop the same array
twice, but this is what ended up working for me.

Also, testing each step in the process greatly reduced what would otherwise surely be a tedious
method to bugfix.

### Credits
README layout was inspired by Jesse Nguyen's [substring project][1].

[1]: https://github.com/nguyenjessev/sub-strings
