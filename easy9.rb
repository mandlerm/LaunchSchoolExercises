
########  1
# def greetings(arr, hsh)
#   name = arr.join(' ')
#   title = hsh[:title]
#   occ = hsh[:occupation]
#   p "Hello, #{name}! Nice to have a #{title} #{occ} around."
# end

# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })

########  2

# def twice(num)
#   double = FALSE
#   stringed_num = num.to_s
#   if stringed_num.size.even?
#     half = stringed_num.size / 2 

#     p stringed_num[0..half-1]
#     p stringed_num[half..stringed_num.size]
#     double = stringed_num[0..half-1] == stringed_num[half..stringed_num.size]
#   end
#   if double 
#     num
#   else 
#      num * 2
#   end 
# end

# p twice(37) == 74
# p twice(44) == 44
# p twice(334433) == 668866
# p twice(444) == 888
# # p twice(107) == 214
# # p twice(103103) == 103103
# # p twice(3333) == 3333
# # p twice(7676) == 7676
# p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
# # p twice(5) == 10




########  3

# def negative(num)
#   if num == 0
#     0
#   elsif num < 0
#     num 
#   else 
#     num - num - num
#   end
# end

# p negative(5) == -5
# p negative(-3) == -3
# p negative(0) == 0  

########  4

# def sequence(num)
#   num_array = []
#   (1..num).each {|n| num_array << n}
#   num_array
# end


# p sequence(5) == [1, 2, 3, 4, 5]
# p sequence(3) == [1, 2, 3]
# p sequence(1) == [1]

########  5

# def uppercase?(char)
#   char.split.all? {|c| c == c.upcase}
# end


# p uppercase?('t') == false
# p uppercase?('T') == true
# p uppercase?('Four Score') == false
# p uppercase?('FOUR SCORE') == true
# p uppercase?('4SCORE!') == true
# p uppercase?('') == true

########  6

# def word_lengths(words)
#   words.split.map do |word| 
#     size = word.size.to_s
#     word << " " 
#     word += size
#   end
# end


# p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

# p word_lengths("baseball hot dogs and apple pie") ==
#   ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

# p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

# p word_lengths("Supercalifragilisticexpialidocious") ==
#   ["Supercalifragilisticexpialidocious 34"]

# p word_lengths("") == []

########  7

# def swap_name(name)
#   arr = name.split
#   arr[1], arr[0] = arr[0], arr[1]
 
#   arr.join(', ')
  
# end

# p swap_name('Joe Roberts') == 'Roberts, Joe'


########  8
# def sequence(iterations, start_val)
#   val_arr = []
#     print_val = start_val
#   iterations.times do |_|
#     val_arr << print_val
#     print_val += start_val
#   end 
#   val_arr
# end

# p sequence(5, 1) == [1, 2, 3, 4, 5]
# p sequence(4, -7) == [-7, -14, -21, -28]
# p sequence(3, 0) == [0, 0, 0]
# p sequence(0, 1000000) == []

########  9

# def get_grade(g1, g2, g3)
#   ave = (g1 + g2 + g3)/3

#   case ave
#   when 90..100
#     p "A"
#   when 80..90
#     p "B"
#   when 70..80
#     p "C"
#   when 60..70
#     p "D"
#   else 
#     p "F"
#   end
# end 

# p get_grade(95, 90, 93) == "A"
# p get_grade(50, 50, 95) == "D"


########  10

def buy_fruit(arr)
  list = []

  arr.each do |item, num|
    num.times {|n| list.push(item)}
  end
  list
end


p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
