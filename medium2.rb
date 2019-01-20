require 'pry'

###### 1

# INPUT: a text file
# OUTPUT: a string and an integer. String = longest sentence. Integer = # words in that sentence

# DO: 
# => assign a variable to the content of the text file (string format?)
# => split the sentence using Regex for /[.,!]/
# => assign new variable to the split value
# => assign variable longest_sentence = ''
# => assign longest_word_count = 0
# => .each over array |sent| 
# => compare sent.split(' ').length to longest_word_count
# => if >, longest_sentence = sent
# => longest_word_count = sent.split(' ').length

# => p "The longest sentence is: /n #{longest_sentence}, with #{longest_word_count} words"

# sentence = "Four score and seven years ago our fathers brought forth
# on this continent a new nation, conceived in liberty, and
# dedicated to the proposition that all men are created
# equal.

# Now we are engaged in a great civil war, testing whether
# that nation, or any nation so conceived and so dedicated,
# can long endure. We are met on a great battlefield of that
# war. We have come to dedicate a portion of that field, as
# a final resting place for those who here gave their lives
# that that nation might live. It is altogether fitting and
# proper that we should do this.

# But, in a larger sense, we can not dedicate, we can not
# consecrate, we can not hallow this ground. The brave
# men, living and dead, who struggled here, have
# consecrated it, far above our poor power to add or
# detract. The world will little note, nor long remember
# what we say here, but it can never forget what they
# did here. It is for us the living, rather, to be dedicated
# here to the unfinished work which they who fought
# here have thus far so nobly advanced. It is rather for
# us to be here dedicated to the great task remaining
# before us -- that from these honored dead we take
# increased devotion to that cause for which they gave
# the last full measure of devotion -- that we here highly
# resolve that these dead shall not have died in vain
# -- that this nation, under God, shall have a new birth
# of freedom -- and that government of the people, by
# the people, for the people, shall not perish from the
# earth."

# sentence = File.read('pg84.txt')
# p sentence
# split_sentence = sentence.split(/['.!?']/)
# longest_sentence = ''
# longest_word_count = 0

# split_sentence.each do |sent|

#   length = sent.split(' ').length
#   if length > longest_word_count
#     longest_sentence = sent 
#     longest_word_count = length 
#   end
# end

# print "The longest sentence is: \n#{longest_sentence} \n-- with a word count of #{longest_word_count}."


###### 2

# INPUT: word
# OUTPUT: True or False if word can be spelled with the blocks. Each block can only be used once

# DO: 
# 1. upcase input word
# 2. Create nested array of blocks
# 3. Iterate over characteres in word
# 4. for each character, check if that character is in the blocks_array.
# => if YES, remove that k/v pair from hash and move on to next iteration
# => if NO, break and return false

# BLOCKS = [["B", "O"], ["X", "K"], ['D', 'Q'], ['C', 'P'], ['N', 'A'],
#           ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'],
#           ['V', 'I'], ['L', 'Y'], ['Z', 'M']]

# def block_word?(word)
#   word = word.upcase
#   spell = true
#   test_word = ''
#   word.chars.each do |ch|
#     BLOCKS.each_with_index do |block, idx|
#       if block.include?(ch)
#         test_word << ch
#         BLOCKS.delete_at(idx)
#       end
#       test_word
#     end
#   end
#   test_word
#   word == test_word
# end

# # p block_word?('BATCH') == true
# # p block_word?('BUTCH') == false
# p block_word?('jest') == true

###### 3
# INPUT: string of letters, numbers and other characters
# OUTPUT: hash with percentage of each of:
# => lowercase:
# => uppercase:
# => neither

# 1. string_length = string.size
# => initialize each variable count to 0
# 2. iterate through chars
# => case statement for each count option 

# def letter_percentages(str)
#   str_length = str.size
#   lower_size = 0.0
#   upper_size = 0.0
#   neither_size = 0.0
#   hsh = {}
#   str.chars do |ch|
#     # binding.pry
#     if ch =~ /['a-zA-Z']/
#       case  
#       when ch.downcase == ch then lower_size += 1
#       when ch.upcase == ch   then upper_size += 1 
#       end
#     else
#       neither_size += 1
#     end
#   end

#   lower = lower_size / str_length * 100
#   upper = upper_size / str_length * 100
#   neither = neither_size / str_length * 100

#   hsh[:lowercase] = lower 
#   hsh[:uppercase] = upper
#   hsh[:neither] = neither
#   p hsh
# end

# p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
# p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
# p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }


###### 4

# INPUT: string
# OUTPUT: True or False
# DO: Determine if all parenthases are matched.
# iterate over chars. capture all ( and ). place in sub array
# IF subarray[0] == ")" return false
# open = 0
# closed = 0
# iterate over subarray
# properly increment open and closed
# if closed > open => return false
# exit loop
# if open == closed => return true


# def balanced?(str)
#   braces = str.chars.select {|c| c == '(' || c == ')'}

#   right = 0
#   left = 0
#   balance = false

#   if braces[0] == ')'
#     return false 
#   elsif braces.empty?
#     return true 
#   else
#     braces.each do |b|
#       b == '(' ? right += 1 : left += 1
#       if left > right 
#         balance = false
#         return false 
#       end
#     if left == right 
#       balance = true 
#     end
#     end
#   end
#   balance
# end

# p balanced?('What (is) this?') == true
# p balanced?('What is) this?') == false
# p balanced?('What (is this?') == false
# p balanced?('((What) (is this))?') == true
# p balanced?('((What)) (is this))?') == false
# p balanced?('Hey!') == true
# p balanced?(')Hey!(') == false
# p balanced?('What ((is))) up(') == false

###### 5

# Validate a triangle
# input, three numbers
# output:  as a sympol, one of 4 options: 
# => :equilateral
# => :ososceles
# => :scalene
# => :invalid

# RULES:
# => 1. length of two shorter sides > length of larger side
# => => put into an array and sort - easier to access each value
# => 2. all sides must be > 0 ELSE :invalid
# => 3. If all side are the same :equilateral
# => 4. if 2 sides are the same :isosceles
# => else scalene

# def triangle(int1, int2, int3)
#   tri = []
#   tri << int1 << int2 << int3
#   tri.sort!

#   if tri.any? { |num| num == 0 }
#     return :invalid  
#   end

#   if tri[0] + tri[1] <= tri[2]
#     return :invalid 
#   end

#   if tri.all? { |n| n == tri[0]}
#     return :equilateral
#   end

#   if tri[0] == tri[1] || tri[0] == tri[2] || tri[1] == tri[2] 
#     return :isosceles
#   end

#   return :scalene
# end


# p triangle(3, 3, 3) == :equilateral
# p triangle(3, 3, 1.5) == :isosceles
# p triangle(3, 4, 5) == :scalene
# p triangle(0, 3, 3) == :invalid
# p triangle(3, 1, 1) == :invalid
###### 6

# INPUT: three integers - representing angles of a triangle
# OUTPUT: :acute, :right, :obtuse, or :invalid

# def triangle(side1, side2, side3)
#   tri = [side1, side2, side3]
#   case 
#   when tri.include?(0) || tri.reduce(:+) != 180
#     :invalid
#   when tri.include?(90)
#     :right 
#   when tri.any? {|n| n > 90}
#     :obtuse
#   else
#     :acute
#   end
# end

# p triangle(60, 70, 50) == :acute
# p triangle(30, 90, 60) == :right
# p triangle(120, 50, 10) == :obtuse
# p triangle(0, 90, 90) == :invalid
# p triangle(50, 50, 50) == :invalid

###### 7

# INPUT: integer
# OUTPUT:

# require 'date'

# def friday_13th(year) 
#   month = 1
#   counter = 0
#   loop do
#     if Date.new(year, month, 13).friday?
#       counter += 1
#     end
#     month += 1
#     break if month > 12
#   end
#   counter
# end
# # iterate 1 - 12
# #date = Date.new(year, i, 13 ).friday?
# # if date.friday?
#   # counter += 1

# p friday_13th(2015) == 3
# p friday_13th(1986) == 1
# p friday_13th(2019) == 2

###### 8
# INPUT: integer
# OUTPUT: next featured number that is greater than the input. 
# => issue ERROR message if no next featured number
# DO: 
# => to find starting 7, num / 7 + 7 (gives me the next multiple past that input #)
# => loop do BREAK when found
# => if num.odd?
# => then check if num.to_s[0] == num.to_s[1] (FIND MORE EFFICIENT WAY TO DO THIS)

# if second part is TRUE. break and return that number

# def featured(number)
#   starting_num = ((number / 7) * 7 ) + 7
#   feature = nil
#   loop do
#     if starting_num.odd?
#       if starting_num.to_s.chars.uniq == starting_num.to_s.chars
#         return starting_num
#       end
#     end
#     starting_num += 7
#   end
#  feature
# end

# p featured(12) == 21
# p featured(20) == 21
# p featured(21) == 35
# p featured(997) == 1029
# p featured(1029) == 1043
# p featured(999_999) == 1_023_547
# p featured(999_999_987) == 1_023_456_987
###### 9

# INPUT: array of elements
# OUTPUT: sorted array
# DO: manual bubble sort

def bubble_sort!(arry)
    
    arry.sort! do |a, b|
      a <=> b
    end

    arry

end

array = [5, 3]
p bubble_sort!(array)
###### 10

# INPUT: integer, n
# OUTPUT: sum(1..n)**2 - (1..n) |num| n**2 summed up
# DO: 
# => sum_squared = ((1..5).reduce(:+))**2

# def sum_square_difference(limit)
#   sum_squared = ((1..limit).reduce(:+))**2
#   squares_array = (1..limit).map { |n| n**2}
#   squared_sums = squares_array.reduce(:+)

#   sum_squared - squared_sums

# end


# p sum_square_difference(3) == 22
#    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
# p sum_square_difference(10) == 2640
# p sum_square_difference(1) == 0
# p sum_square_difference(100) == 25164150
