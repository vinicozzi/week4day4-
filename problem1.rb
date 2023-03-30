def my_min(list) n + n + 1 + n = n 
    new_hash = Hash.new { |h, k| h[k] = [] } O(n)
    list.each_with_index do |num, idx| O(n)
        new_hash[idx] = num 
    end
    new_hash.sort_by { |k, v| v }[0][1]
    # lowest_variable = 0 = n^2
    # list.each do |num|
    #     list.each do |num2|
    #         if num2 < num
    #             if num2 < lowest_variable
    #                 lowest_variable = num2 
    #             end
    #         end
    #     end
    # end
    # lowest_variable
end 



list = [ 0, 3, -5, 4, 1, 10, 1, 90 ]
p my_min(list)  # =>  -5