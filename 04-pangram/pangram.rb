# Author: Allan Palacios

class Pangram
    def self.is_pangram?(sentence) # Class method -identifies itself.
      # Create a hash to store the presence of each letter
      letter_presence = Hash.new(false)
  
      # Iterate through each character in the sentence
      sentence.downcase.each_char do |char|
        # If the character is a letter (a-z), mark its presence in the hash
        letter_presence[char] = true if char.match?(/[a-z]/)
      end
  
      # Check if all letters from 'a' to 'z' are present in the sentence
      ('a'..'z').all? { |letter| letter_presence[letter] }
    end
  end

  # Example usage:
sentence = "The quick brown fox jumps over the lazy dog."
puts Pangram.is_pangram?(sentence)

sentence = "This is not a pangram."
puts Pangram.is_pangram?(sentence)
  