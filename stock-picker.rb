

def stock_picker(stock_prices)
  best_pair = [0, 0]
  max_profit = 0
  min_price = stock_prices[0]
  min_day = 0
  
  stock_prices.each_with_index do |price, day|
    if price < min_price
      min_price = price
      min_day = day
    elsif price - min_price > max_profit
      max_profit = price - min_price
      best_pair = [min_day, day]
    end
  end

  best_pair
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
# 1
# 4

