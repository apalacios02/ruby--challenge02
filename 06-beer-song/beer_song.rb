# Author: Allan Palacios

class BeerSong
    def bottles_of_beer(num)
      case num
      when 0
        "no more bottles"
      when 1
        "1 bottle"
      else
        "#{num} bottles"
      end
    end
    
    def take_one_down(num)
        case num
        when 0
          "Go to the store and buy some more"
        when 1
          "Take it down and pass it around"
        else
          "Take one down and pass it around"
        end
      end
  
      def verse(num)
        case num
        when 0
          "No more bottles of beer on the wall, no more bottles of beer.\n" \
          "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
        else
          next_num = num - 1
          "#{bottles_of_beer(num)} of beer on the wall, #{bottles_of_beer(num)} of beer.\n" \
          "#{take_one_down(num)}, #{bottles_of_beer(next_num)} of beer on the wall.\n"
        end
      end
  
    def verses(start_num, end_num)
      start_num.downto(end_num).map { |num| verse(num) }.join("\n")
    end
  
    def lyrics
      verses(99, 0)
    end
  end

  beer_song = BeerSong.new

99.downto(0) do |num|
  next_num = num - 1
  puts "#{beer_song.bottles_of_beer(num)} of beer on the wall, #{beer_song.bottles_of_beer(num)} of beer."
  puts "#{beer_song.take_one_down(num)}, #{beer_song.bottles_of_beer(next_num)} of beer on the wall.\n\n"
end