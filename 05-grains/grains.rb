# Author: Allan Palacios

class Grains
    def self.square(square_number)
      2**(square_number - 1)
    end
  
    def self.total
      (1..64).sum { |square| square(square) }
    end
  end
  
  puts "Square\tGrains on Square"
puts "-------------------------"
(1..64).each do |square|
    grains_on_square = Grains.square(square)
  puts "#{square}\t#{grains_on_square}"
end
puts "-------------------------"
puts "Total Grains: #{Grains.total}"