require "pry-byebug"

def caesar_cipher(string, shift)
  alpha = ("a".."z").to_a
  cypher = alpha.slice(shift..alpha.length-1) + alpha.slice(0...shift)

  # binding.pry

  new_string = 
    string.split("").map do |letter|
      if alpha.include?(letter.downcase)
        if letter == letter.upcase
          cypher[alpha.index(letter.downcase)].upcase
        else
          cypher[alpha.index(letter.downcase)]
        end
      else
        letter
      end
    end
  
  new_string.join("")
end

puts caesar_cipher("What a string!", 5)