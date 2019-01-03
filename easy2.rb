###########. TEDDY. ###############

# random generate a number between 20 and 200
# SET number to age
# print out "Teddy is #{age} years old!"


# puts "Hello. What is your name?"
# name = gets.chomp
# if name == '' 
#   name = 'Teddy'
# end
# age = rand(20..200)
# puts "#{name} is #{age} years old!"



########## HOW BIG IS THE ROOM. #####################

# puts 'What is the width of the room in meters?'
# width = gets.chomp.to_f

# puts 'What is the length of the room in meters?'
# length = gets.chomp.to_f

# sq_meters = (width * length).round(2)
# sq_feet = (sq_meters * 10.7639).round(2)
# puts "The area of the room is #{sq_meters} square meters (#{sq_feet} square feet)."


#############. TIP CALCULATOR ###################

# puts "What is the bill?"
# bill = gets.chomp.to_f 

# puts "What is the tip percentage?"
# percent = gets.chomp.to_f / 100

# tip = (bill * percent)
# total = (bill + tip)

# puts "The tip is $#{'%.2f' % tip}."
# puts "The total is $#{'%.2f' % total}."



############## WHEN WILL I RETIRE??? ###################

# require 'date'
# puts "What is your age?"
# age = gets.chomp.to_i 

# puts "At what age would you like to retire?"
# retire = gets.chomp.to_i 

# year = Time.new.year
# work_time = retire - age

# puts "It's only #{year}.  You will retire in #{year + work_time}. \n You have only #{work_time} years of work to go!"



##############. GREETING A USER #######################


# puts "What is your name?"
# name = gets.chomp!
# if name[-1] == '!'
#   name = name.chop!
#   puts "HELLO #{name.upcase}. WHY ARE YOUR SCREAMING?"
# else 
#   puts "Hello #{name}."
# end 



#################.  ODD NUMBERS ##################

# (1..99).step(2) { |n| p n }


# 1.upto(99) { |n| p n if n.odd?}


#.  EVEN

# 1.upto(99) { |n| p n if n.even? }


###########.  SUM OR PRODUCT OF CONSECUTIVE INTEGERS.  ##############

# puts " >> Please enter an integer greater than 0: "
# integer = gets.chomp.to_i
# puts " >> Enter 's' to compute the sum, 'p' to compute the product."
# choice = gets.chomp

# selection = ''
# answer = case choice
# when 's' 
#   sum = 0
#   selection = 'sum'
#   # 1.upto(integer) { |n| sum += n }
#   (1..integer).reduce(:+)
#   sum
# when 'p'
#   product = 1
#   selection = 'product'
#   1.upto(integer) { |n| product *= n}
#   product 
# end 

# puts "The #{selection} of the integers between 1 and #{integer} is #{answer}."


###############  STRING ASSIGNMENT.  #########################


array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2


# array of names
# array 2 has same values as array 1





