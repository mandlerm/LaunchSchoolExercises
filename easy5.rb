
# def ascii_value(string)
#   sum = 0

#   string.chars { |c| sum += c.ord }

#    sum

# end 


# p ascii_value('Four score') == 984
# p ascii_value('Launch School') == 1251
# p ascii_value('a') == 97
# p ascii_value('') == 0



# INPUT: minutes = integer (positive or negative)
# OUTPUT: time in military time
# PROCESS: 1. transform the integer into hours: minutes.
# 2. If integer == positive => ADD transformed time to 00:00
#.   If integer == negative => SUBTRACT transformed time from 00:00
# Account for minutes being beyond a 24 hour day 
#
#


def time_of_day(time)
  starting_hours = 24

  hours = time / 60
  minutes = time % 60
  s_hours = ''
  s_mins = ''

# set minutes to a string
  if minutes.to_s.size < 2
    s_mins = add_a_digit(minutes)
    
  else 
    s_mins = minutes.to_s
  end

  if hours == 0 || hours == 24 || hours == -24
    hours = 0
  elsif (-24..0).include?(hours) 
    hours += 24
  else 
    sign = ''

      if hours < 24
        sign = 'neg'
      end 
      
      while hours > 24 || hours < -24
       hours = hours.abs - 24

      end
     
      if sign == 'neg'       
        s_hours = (hours-24).abs
        
      # else 
      #   s_hours = add_a_digit(hours)
      end
       
  end

    if s_hours.to_s.size < 2
      s_hours = add_a_digit(hours)
    else   
      s_hours = hours.to_s
    end

# p s_hours

  p "#{s_hours}:#{s_mins}"
  "#{s_hours}:#{s_mins}"
  
end 

def add_a_digit(num)
  num.to_s.prepend('0') if num.to_s.size < 2 
end   

# p time_of_day(0) == "00:00"
# p time_of_day(-3) == "23:57"
# p time_of_day(35) == "00:35"
# p time_of_day(-1437) == "00:03"
# p time_of_day(3000) == "02:00"
# p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"