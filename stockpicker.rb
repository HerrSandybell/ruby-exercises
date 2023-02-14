def stock_picker(days)
  best_results = {
    buy_day: 0,
    sell_day: 0,
    profit: 0
  }

  days.each_with_index do |day, index|
    (index + 1).upto(days.length - 1) do |i|
      profit = days[i] - day

      next unless profit > best_results[:profit]

      best_results = {
        buy_day: index,
        sell_day: i,
        profit:
      }
    end
  end

  [best_results[:buy_day], best_results[:sell_day]]
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
