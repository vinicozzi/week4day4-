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

def first_anagram?(word1, word2)
    word1.chars.permutation.to_a.include?(word2.chars)
end




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


def third_anagram?(word1, word2)

    bubble(word1) == bubble(word2)

end

def bubble(word)
    sorted = false
    until sorted do
    sorted = true
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    i = 0
        while i < word.length - 1
            if alphabet.index(word[i]) >  alphabet.index(word[i+1])
                word[i], word[i+1] = word[i+1], word[i]
                sorted = false
            end
            i += 1
        end
    end
    word

end

# p third_anagram?("gizmo", "sally")    #=> false
# p third_anagram?("elvis", "lives")    #=> true

def fourth_anagram?(word1, word2)
    hash = Hash.new(0)

    word1.chars.each { |char| hash[char] += 1 }
    word2.chars.each { |char| hash[char] += 1 }

    hash.all? { |k,v| v == 2 }

end

p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true






def two_sum?(arr, target_sum)




end
