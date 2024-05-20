# Author: Allan Palacios

class Year
    def self.leap?(year)
      (year % 4 == 0) && (year % 100 != 0 || year % 400 == 0)
    end
  end
  
  
  year = 1996
  
  if Year.leap?(year)
    puts "#{year} is a leap year."
  else
    puts "#{year} is not a leap year."
  end