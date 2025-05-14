def stock_picker(stocks)
  buy_day = 0
  sell_day = 0
  best_profit = 0

  stocks.each_with_index do |price, day|
    comparison = 1

    stocks.each_with_index do |next_price, next_day|
      next unless next_day == day + comparison
      puts "Comparing Day #{day + 1} with Day #{next_day + 1}"
      comparison += 1
    end
  end
end

stock_picker([17,3,6,9,15,8,6,1,10])