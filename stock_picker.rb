array = [4, 5, 3, 6, 1, 6, 2]


def stock_picker(array)
    day1 = 0
    day2 = 0
    best_profit = 0

    array_length = array.length()
    array.each_with_index do |num, idx|
        for k in idx + 1..array.length - 1 do
            profit = array[k] - num
            if profit > best_profit
                best_profit = profit
                day1 = idx
                day2 = k
            end
        end
    end
    p [day1, day2]
end

stock_picker([4, 5, 3, 6, 1, 6, 2])
