def stock_picker(stocks)
    highest_value = 0
    highest_value_indexes = []

    stocks.each_with_index do |value1, index1|
        stocks.each_with_index do |value2, index2|
            profit = value2 - value1

            if profit > highest_value && index1 < index2 
                highest_value = profit
                highest_value_indexes = [index1, index2]
            end
        end
    end

    return highest_value, highest_value_indexes
end

puts stock_picker([17,3,6,9,15,8,6,1,10])