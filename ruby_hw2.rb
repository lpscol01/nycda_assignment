# First attempt at homework:
#
#def word_count(karl_string)
#	words = karl_string.split(" ")
#	frequency = words.inject(Hash.new(0)){ |h,v| h[v] += 1; h }
#	return frequency
#end
#
#p word_count("I've heard that fact, that is you eat more than six bananas it will kill you. I saw a bowl with seven bananas in it and I thought, that's dangerous.")
#
#word_count.max_by { |v| freq[v] }


string = "I've heard that fact, that is you eat more than six bananas it will kill you. I saw a bowl with seven bananas in it and I thought, that's dangerous."

string.downcase.gsub(/\W/,'')

array_of_phrase = string.split(" ")

@frequency_of_words = {}

array_of_phrase.each.do |string|
	if @frequency_of_words[string]
		@frequency_of_words[string] += 1
	else
		@frequency_of_words[string] = 1
	end
end

puts @frequency_of_words.sort_by{|k,v| v}