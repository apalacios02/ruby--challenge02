# Author: Allan Palacios

class Bob
    def hey(remark)
      if remark.strip.empty?
        'Fine. Be that way!'
      elsif remark.upcase == remark && remark.downcase != remark
        'Whoa, chill out!'
      elsif remark.end_with?('?')
        'Sure.'
      else
        'Whatever.'
      end
    end
  end
 
  bob = Bob.new
  
puts bob.hey('How are you?') 
puts bob.hey('WATCH OUT!')   
puts bob.hey('')             
puts bob.hey('Good morning.')
