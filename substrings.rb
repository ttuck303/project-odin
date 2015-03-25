=begin
Your Task:
Implement a method #substrings that takes a word as the first argument and then an array of valid substrings 
(your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) 
that was found in the original string and how many times it was found.	
=end


def substrings(a_word, dict)
	frequencies = Hash.new(0)
	a_word.downcase!
	dict.each do |dict_entry|
		a_word.scan(dict_entry.downcase) {|match| frequencies[match]+=1}
	end
	p frequencies
end	

=begin
# TEST CASES
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
=end


