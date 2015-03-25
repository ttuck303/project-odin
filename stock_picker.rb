=begin
	
Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. 
It should return a pair of days representing the best day to buy and the best day to sell. 
Days start at 0.
	
=end


def stock_picker(prices)
	buy_index = 0
	global_max_profit = [0, 0, 0]
	total_trading_days = prices.length
	prices.each do |buying_price|
		local_max_profit, sell_index = 0, 0
		sales_prices = prices[buy_index+1..total_trading_days]
		sales_prices.each do |selling_price|
			local_max_profit = selling_price - buying_price
			global_max_profit = [local_max_profit, buy_index, sell_index+buy_index+1] if local_max_profit > global_max_profit[0]
			sell_index += 1
		end
		buy_index += 1
	end
	return global_max_profit
end

=begin 
# TEST CASES
arr1 = [ 4, 5, 8 ,2, 5, 45, 22, 67]
puts stock_picker(arr1)
puts
arr2 = [2, 5, 10, 15, 20]
puts stock_picker(arr2)
puts
arr3 = [10, 5, 3, 1]
puts stock_picker(arr3)
=end


