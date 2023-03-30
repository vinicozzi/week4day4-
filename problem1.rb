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


# def largest_contiguous_subsum(list)

#         current_count = 0
#         current_max = list[0]
#         list.each do |ele|
#             current_count += ele
#             current_max = current_count if current_count > current_max
#             current_count = 0 if current_count < 0
#         end
#         current_max
# end

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



# list = [5, 3, -7]
# p largest_contiguous_subsum(list) # => 8

# # # possible sub-sums
# # [5]           # => 5
# # [5, 3]        # => 8 --> we want this one
# # [5, 3, -7]    # => 1
# # [3]           # => 3
# # [3, -7]       # => -4
# # [-7]          # => -7

# list = [2, 3, -6, 7, -6, 7]
# p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])

# list = [-5, -1, -3]
# p largest_contiguous_subsum(list) # => -1 (from [-1])

# def first_anagram?(word1, word2)
#     word1.chars.permutation.to_a.include?(word2.chars)
# end




# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true

# def second_anagram?(word1, word2)
#     word1.chars.each do |char|
#         index = word2.chars.find_index(char)
#         if index != nil
#             word2[index] = ""
#         end
#     end
#     word2.empty?
# end

# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true
# Write a method #second_anagram? that iterates over the first string.
# For each letter in the first string, find the index of that letter in the second string
# (hint: use Array#find_index) and delete at that index.
# The two strings are anagrams if an index is found for every letter and the second string is
# empty at the end of the iteration.

# Try varying the length of the input strings. What are the differences between
# #first_anagram? and #second_anagram??


# def third_anagram?(word1, word2)

#     bubble(word1) == bubble(word2)

# end

# def bubble(word)
#     sorted = false
#     until sorted do
#     sorted = true
#     alphabet = "abcdefghijklmnopqrstuvwxyz"
#     i = 0
#         while i < word.length - 1
#             if alphabet.index(word[i]) >  alphabet.index(word[i+1])
#                 word[i], word[i+1] = word[i+1], word[i]
#                 sorted = false
#             end
#             i += 1
#         end
#     end
#     word

# end

# p third_anagram?("gizmo", "sally")    #=> false
# p third_anagram?("elvis", "lives")    #=> true

# def fourth_anagram?(word1, word2)
#     hash = Hash.new(0)

#     word1.chars.each { |char| hash[char] += 1 }
#     word2.chars.each { |char| hash[char] -= 1 }

#     hash.all? { |k,v| v == 0 }
# end

# p fourth_anagram?("gizmo", "sally")    #=> false
# p fourth_anagram?("elvis", "lives")    #=> true

# def two_sum?(arr, target_sum)
#     arr.each_with_index do |ele1, idx1|
#         arr.each_with_index do |ele2, idx2|
#             if idx2 > idx1 && ele1 + ele2 == target_sum 
#                 return true 
#             end 
#         end
#     end
#     false 
# end

# arr = [0, 1, 5, 7]
# p two_sum?(arr, 6) # => should be true
# p two_sum?(arr, 10) # => should be false
#def bsearch (nums, target, start=0, finish=arr.length)
# return nil if start == finish 
# mid = (finish-start)/2 + start
# case target <=> nums[mid]
# when -1 
#     bsearch(nums, target, start, mid)
# when 0
#     mid 
# when 1 
#     bsearch(nums, target, mid+1, finish)
# end 
# end 
# def sorting_sum?(arr, target_sum, start=0, finish=arr.length)
#     i = 0
#     while  i < arr.length 
#         return nil if start == finish 
#         mid = (finish + start)/ 2 
#         target_val = target_sum - arr[i]
#         case target_val <=> arr[mid]
#         when -1 
#             sorting_sum?(arr, target_val, start, mid)
           
#         when 0 
#             mid 
#         when 1 
#             sorting_sum?(arr, target_val, mid+1, finish)
           
#         end 
#         i += 1
#     end
    
# end 
# def binary_search(arr, target_val, start, finish)
#     return nil if start > finish
#     mid = (start + finish) / 2
#     case target_val <=> arr[mid]
#     when -1
#       return binary_search(arr, target_val, start, mid - 1)
#     when 0
#        return mid
#     when 1
#       return binary_search(arr, target_val, mid + 1, finish)
#     end
#   end
  
#   def sorting_sum?(arr, target_sum)
#     arr.each_with_index do |val, i|
#       target_val = target_sum - val
#       result = binary_search(arr, target_val, 0, arr.length - 1)
#       return true if result && result != i
#     end
#     return false
#   end

# arr = [0,1,5,7]
# p sorting_sum?(arr, 6)
# p sorting_sum?(arr, 10)
def windowed_max_range(array, window_size)
    subs = [] 
    (0...array.length).each do |start|
        (start...array.length).each do |lastt|
                subs << array[start..lastt]
        end 
    end 
    results = []
    subs.each do |sub|
        if sub.length == window_size 
            min = sub.min 
            max = sub.max 
            result = max - min 
            results << result 
        end
    end 
    return results.max 
end 

  
  

p windowed_max_range([1, 0, 2, 5, 4, 8], 2)# # 4, 8 - 4 
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) # # 0, 2, 5 - 5 
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) # # 2, 5, 4, 8 - 6 
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) # # 3, 2, 5, 4, 8 - 6 