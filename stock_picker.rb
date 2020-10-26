def stock_picker(stock_arry)
    diff = 0
    days = []
    stock_arry.each_with_index do |stock,idx|
        a_idx = idx
        b_idx = idx
        while b_idx < stock_arry.length
            if stock_arry[b_idx] - stock_arry[a_idx]  > diff
                diff =  stock_arry[b_idx] - stock_arry[a_idx]
                days = [a_idx,b_idx]
            end
            b_idx += 1
        end
    end
    return days
end




stock_picker([17,3,6,9,15,8,6,1,10])