require "pry"
class PigLatinizer
attr_accessor :text

def piglatinize(text)
text.split().map do |word|
vowel_loc=word.index(word.match(/a|e|i|o|u|A|E|I|O|U/)[0])
if vowel_loc == 0
  word=word[vowel_loc..word.length-1]+"way"
else
word=word[vowel_loc..word.length-1]+word[0...vowel_loc]+"ay"
end
end.join(" ")
end

end
# binding.pry
# true

# user_phrase=PigLatinizer.new.piglatinize("I am crazy")
# binding.pry
# true
