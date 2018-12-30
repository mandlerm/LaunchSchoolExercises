# method takes in array
# create new hash
# iteration through array
# IF item doesn't exist
  # create Hash key with value of 1
# ELSE
  # increment value of that hash key
# return the hash 

def count_occurrences(array)
  occurances = {}

  array.each do |item|
    if occurances[item]
      occurances[item] += 1
    else 
      occurances[item] = 1
    end
  end
  
  occurances.each do |key, value| 
    puts "#{key} => #{value}"
  end
end


vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)