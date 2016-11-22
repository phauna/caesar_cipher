def caesar_cipher(text, num)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  transformed_text = ""
  text.split("").each do |char|
    if "?.,! ".include?(char)
      transformed_text << char
    else
      transformed_char = alphabet[(alphabet.index(char.downcase) + num) % alphabet.size]
      if char == char.upcase
        transformed_text << transformed_char.upcase
      else
        transformed_text << transformed_char
      end
    end
  end
  return transformed_text.strip
end

print "Enter sentence --> "

text = gets.chomp



print "Enter cipher number (1-26) --> "

num = gets.chomp.to_i

puts caesar_cipher(text, num)