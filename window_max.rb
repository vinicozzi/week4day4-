def windowed_max_range(array, window_size)
    subs = [] 
    (0...array.length).each do |start|
        (start...array.length).each do |lastt|
                subs << array[start..lastt]
        end 
    end 

    vals = subs.select { |sub| sub.length  == window_size - array.length }
end 
  Generate all possible windows of the given size
  
  

p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8