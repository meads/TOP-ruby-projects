def stock_picker(stock_prices)
  min_price = stock_prices[0]
  max_profit = 0
  buy_day = 0
  sell_day = 0
  best_buy_and_sell_days = [0, 0]

  stock_prices.each_with_index do |price, day_index|
    # check if the current price is a new minimum
    if price < min_price
      min_price = price
      buy_day = day_index
    # check if current price is a new max profit day
    elsif price - min_price > max_profit
      # calculate potential profit if you sold today
      max_profit = price - min_price
      sell_day = day_index
      best_buy_and_sell_days = [buy_day, sell_day]
    end
  end

  best_buy_and_sell_days
end

puts stock_picker([7, 1, 5, 3, 6, 4])
# [1, 4]
# buy on day 1 at price = 1 and sell on day 4 at price = 6 for a max profit of 5

puts stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
# [1, 4]
# buy on day 1 at price = 3 and sell on day 4 at price = 15 for a max profit of 12
