alphabet = ('a'..'z').to_a
hash = {}
alphabet.each { |letter| hash[letter] = alphabet.find_index(letter) + 1 }
puts hash