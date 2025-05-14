def stock_picker(stocks)
  buy_day = 0
  sell_day = 0
  best_profit = 0

  stocks.each_with_index do |buy_price, day|
    comparison = 1
    stocks.each_with_index do |comp_price, comp_day|
      next unless (comp_day == day + comparison) && (comp_price > buy_price)
      
      current_profit = comp_price - buy_price
      
      if current_profit > best_profit
        buy_day = day
        sell_day = comp_day
        best_profit = current_profit
      end

      comparison += 1
    end
  end

  [buy_day, sell_day]
end
