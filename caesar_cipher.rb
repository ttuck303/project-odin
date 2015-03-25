=begin
Project 1: Caesar Cipher
From Wikipedia:
In cryptography, a Caesar cipher, also known as Caesar's cipher, the shift cipher, Caesar's code or Caesar shift, is one of the simplest and most widely known encryption techniques. It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. For example, with a left shift of 3, D would be replaced by A, E would become B, and so on. The method is named after Julius Caesar, who used it in his private correspondence.
Your Task
Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string.
=end

def caesar_cipher(secret_message, shift_factor)
	simplified_shift_value = shift_factor % 26
	lowercase_range, uppercase_range, encoded_message  = (97..122), (65..90), ""
	secret_message.each_char do |char|
		orig_char_value = char.ord 
		new_char_value = nil
		if lowercase_range === orig_char_value 
			new_char_value = orig_char_value + simplified_shift_value
			new_char_value -= 25 if new_char_value>122
		elsif uppercase_range === orig_char_value
			new_char_value = orig_char_value + simplified_shift_value
			new_char_value -= 25 if new_char_value> 90
		else
			new_char_value = orig_char_value
		end
		encoded_message += new_char_value.chr
	end
	encoded_message
end

=begin
TEST CASES:
puts caesar_cipher("test GH _ run, z", 0)
puts caesar_cipher("test GH _ run, z", 2)
puts caesar_cipher("test GH _ run, z", 28)
=end
