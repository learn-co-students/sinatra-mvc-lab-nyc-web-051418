class PigLatinizer
  attr_accessor :user_phrase

  def initialize()
  end

  def piglatinize(string)
    vowels = ['a', 'e', 'i', 'o', 'u']
    piglatinized_sentence = []
    string.split(" ").each do |word|
      if vowels.include?(word[0].downcase)
        piglatinized_sentence << word + 'way'
      else
        first_vowel_idx = nil
        word.split('').each_with_index do |letter, idx|
          if vowels.include?(letter) && first_vowel_idx == nil
            first_vowel_idx = idx
          end
        end
        before_vowel, after_vowel = word.slice!(0...first_vowel_idx), word
        piglatinized_sentence << after_vowel + before_vowel + 'ay'
      end
    end
    piglatinized_sentence.join(" ")
  end

  def piglatinize_sentence(sentence)
    piglatinized_sentence = []
    sentence.split(' ').each do |word|
      piglatinized_sentence << piglatinize(word)
    end

    piglatinized_sentence.join(' ')
  end
end
