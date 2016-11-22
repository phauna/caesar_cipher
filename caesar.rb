
print "Enter sentence --> "

sentence = gets.chomp

split_sen = sentence.split('')

puts
print "Enter cipher number (1-26) --> "

cipher_number = gets.chomp.to_i

puts

alphabet1 = ('a'..'z').to_a
alphabet2 = ('a'..'z').to_a

alphabet = alphabet1 + alphabet2

upalpha1 = ('A'..'Z').to_a
upalpha2 = ('A'..'Z').to_a

upalpha = upalpha1 + upalpha2

caesar = []

split_sen.each do |letter|
	if letter =~ /[a-z]/
		letterkey = alphabet.find_index(letter).to_i
		caesar.push(alphabet[(letterkey + cipher_number)])
	elsif letter =~ /[A-Z]/
		letterkey = upalpha.find_index(letter).to_i
		caesar.push(upalpha[(letterkey + cipher_number)])
	else
		caesar.push(letter)
	end
end


puts caesar.join

puts
