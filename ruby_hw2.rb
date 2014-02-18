def word_count(karl_string)
	words = karl_string.split(" ")
	frequency = words.inject(Hash.new(0)){ |h,v| h[v] += 1; h }
	return frequency
end

p word_count("I've heard that fact, that is you eat more than sic bananas it will kill you. I saw a bowl with seven bananas in it and I thought, that's dangerous.")

word_count.max_by { |v| freq[v] }