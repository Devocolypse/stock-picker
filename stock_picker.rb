def stock_picker(stocks)
  buy_day = 0
  sell_day = 0
  best_profit = 0

  stocks.each_with_index do |price, day|
    puts "Day #{1 + day} price: $#{price}"
  end
end

stock_picker([17,3,6,9,15,8,6,1,10])