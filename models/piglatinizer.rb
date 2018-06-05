class PigLatinizer

  def piglatinize(string)
    vowels = ["A", "a", "E", "e", "I", "i", "O", "o", "U", "u"]
    consonants = ("a".."z").to_a + ("A".."Z").to_a - vowels
    result = []
    words = string.split(" ")
    words.each do |word|
      if vowels.include?(word[0])
        result << word + "way"
      else
        new_word = ""
        idx = 0
        while consonants.include?(word[idx])
          new_word = word[(idx + 1)..-1] + word[0..idx]
          idx += 1
        end
        result << new_word + "ay"
      end
    end
    result.join(" ")
  end

end
