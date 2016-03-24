def caesar_cipher(string, int)
	punctuation = ["?", "!", "¿", "¡", ",", ".", ";", ":", "-", "_", " "]
	letters = string.split("").map do |i|
		if punctuation.include? i
			i
		elsif i == i.capitalize
			if i.ord + int > 90
				i = ((i.ord + int) - 90) + 64
				i = i.chr
			else
				i = i.ord + int
				i = i.chr
			end
		elsif i.ord + int > 122
				i = ((i.ord + int) - 122) + 96
				i = i.chr
		else
			i = i.ord + int
			i = i.chr
		end
	end
	string = letters.join("")
	puts string
end