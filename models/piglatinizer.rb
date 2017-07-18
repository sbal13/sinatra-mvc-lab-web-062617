require 'pry'
class PigLatinizer

	attr_accessor :words

	def to_pig_latin(target = @words)
		target.split(" ").map{|word| piglatinize(word)}.join(" ")
	end

	def piglatinize(single_word)
		letters = single_word.chars


		if letters[0].downcase.match(/[aeiou]/)
			single_word + "way"
		else
			multiple_consonants = []

			letters.each do |letter| 
				letter.match(/[aeiou]/) ? break : multiple_consonants << letter 
			end

			first = multiple_consonants.join("")

			single_word.slice((first.length)..-1) + first + "ay"
		end
	end
end