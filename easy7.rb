##### 1

#INPUT: 2 arrays
# OUTPUT - 1 array combined

# def interleave(array1, array2)
#   p array1.zip(array2).flatten
# end

# p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

##### 2

#INPUT: string
# OUTPUT: hash with keys: lowercase, uppercase, neither

# START
# establish a new has with Hash.new(0)
# string.char - if |c| is lowercase, hsh[:lowercase] += 1
# repeat that for each key 
# return that hash

# def letter_case_count(string)
#   hsh = Hash.new(0)

#   string.chars do |char|
#      if char =~ /[^A-Za-z]/
#       hsh[:neither] = hsh[:neither] += 1
#     elsif char == char.downcase
#       hsh[:lowercase] = hsh[:lowercase] += 1
#     elsif char == char.upcase
#        hsh[:uppercase] = hsh[:uppercase] += 1
#     end
   
#   end
  

#   # counts = {}
#   # characters = string.chars
#   # counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
#   # counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
#   # counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
#   # counts
# end 

# p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
# p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
# p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
# p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }


##### 3
# INPUT: string
# OUTPUT: new string with first letter of each word capitalized 

# START
# SET new string to value of .map 
# .map over string input. Capitalize each value

# def word_cap(string)

#   string.split.map {|word| word.capitalize}.join(' ')
# end

# p word_cap('four score and seven') == 'Four Score And Seven'
# p word_cap('the javaScript language') == 'The Javascript Language'
# p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'


##### 4

# def swapcase(string)
#   swapped = ''
#   string.chars {|c| c == c.upcase ? swapped << c.downcase : swapped << c.upcase}
#   swapped
# end 


# p swapcase('CamelCase') == 'cAMELcASE'
# p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

##### 5
# INPUT: string
# OUTPUT: new string with alternating caps, starting with Caps
# => do not alter numbers, but this does not change alternation

# START
# SET new string
# Iterate over every character
# IF index.odd? make update UNLESS char =~ /[^a-zA-Z]/

def staggered_case(string)

  staggered = ''
  string_array = string.chars 

  string_array.each_with_index do |ch, i|
    if ch =~ /[a-zA-Z]/
      i.odd? ? staggered += ch.downcase : staggered += ch.upcase
    else 
      staggered << ch
    end
  end
  p staggered
end


p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
##### 6



##### 7



##### 8



##### 9



##### 10