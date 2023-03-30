# def my_min(list) n + n + 1 + n = n
#     new_hash = Hash.new { |h, k| h[k] = [] } O(n)
#     list.each_with_index do |num, idx| O(n)
#         new_hash[idx] = num
#     end
#     new_hash.sort_by { |k, v| v }[0][1]
#     # lowest_variable = 0 = n^2
#     # list.each do |num|
#     #     list.each do |num2|
#     #         if num2 < num
#     #             if num2 < lowest_variable
#     #                 lowest_variable = num2
#     #             end
#     #         end
#     #     end
#     # end
#     # lowest_variable
# end



# list = [ 0, 3, -5, 4, 1, 10, 1, 90 ]
# p my_min(list)  # =>  -5


def largest_contiguous_subsum(list) 

        current_count = 0
        current_max = list[0]
        list.each do |ele| 
            current_count += ele  
            current_max = current_count if current_count > current_max 
            current_count = 0 if current_count < 0 
        end
        current_max 
end 

# def hello(list)
#     current_sum = 0
#     current_max = 0

#     list.each do |num|
#         if num < 0 
#             current_max = current_sum 
#         end 
#         if current_sum > current_max 
#             current_max = current_sum 
#         end
#     end
#     current_max 

# end


#5,3,-7

    # sub_sums = []
    # (0...list.length).each do |i|
    #         (i...list.length).each do |j|
    #             sub_sums << list[i..j]

    #         end
    # end
    #     sub_sums.each { |sub_sum| sub_sum.sum}.max
        # sub_sums(:&sum).max



list = [5, 3, -7]
p largest_contiguous_subsum(list) # => 8

# # possible sub-sums
# [5]           # => 5
# [5, 3]        # => 8 --> we want this one
# [5, 3, -7]    # => 1
# [3]           # => 3
# [3, -7]       # => -4
# [-7]          # => -7

list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])

list = [-5, -1, -3]
p largest_contiguous_subsum(list) # => -1 (from [-1])
