def stock_picker(rates)
    max_margin = -(Float::INFINITY)
    margin = 0
    days_counter = (rates.length()) - 1
    buy_idx = 0
    sell_idx = 0
    for buy in 0..days_counter do
        for sell in buy..days_counter do
            margin = rates[sell] - rates[buy]
            if margin > max_margin
                max_margin = margin
                buy_idx = buy
                sell_idx = sell
            end
        end
    end
    return [buy_idx, sell_idx]
end
