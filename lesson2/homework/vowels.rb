# frozen_string_literal: true

# 4 fill hash with vowels

vowels = %w[a e i o u y]
alphabet = ('a'..'z').to_a
hash = {}
alphabet.each do |letter| 
  hash[letter] = count if vowels.include?(letter)
end
puts hash