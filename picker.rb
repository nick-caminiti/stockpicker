def stock_picker(prices)
  high_profit = {profit: prices[(prices.length) - 1].to_i - prices[0].to_i , buy_index: prices[0] , sell_index: prices[(prices.length) -1 ]}
  prices.each_with_index do |buy_price, buy_index|
    prices.each_with_index do |sell_price, sell_index|
      profit = sell_price - buy_price
      buy_index >= sell_index ? next : 
      if profit > high_profit[:profit]
        high_profit[:profit] = profit
        high_profit[:buy_index] = buy_index
        high_profit[:sell_index] = sell_index
      end
    end
  end
  p high_profit
end

  prices = [17,3,6,9,15,8,6,1,10]
  stock_picker(prices)