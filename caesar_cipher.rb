require "pry-byebug"

def caesar_cipher(string, shift)
  # on recupère la valeur du shift et on génère un array avec les lettres codées
    # on génère un array (a..z).to_a
    alpha = ("a".."z").to_a
    # on map l'array en partant de l'index égal à shift
    alpha_shifted = alpha.slice(0...shift)
    cypher = alpha.slice(shift..alpha.length-1) + alpha_shifted
    binding.pry
    # les 
  # on convertit la string en array et on la split
  string_array = string.split("")
  new_string = []
  # pour chaque caractère, si elle est compris entre a-z ou A-Z
  string_array.each.with_index do |letter, index|
    if alpha.include?(letter.downcase)
      new_string << cypher[alpha.index(letter.downcase)]
    else
      new_string << letter
    end
  end
  puts new_string.join("")

end

caesar_cipher("What a string!", 5)