class PigLatinizer

  def find_first_consonant(original_word)
    word_array = original_word.chars
    first_vowel_index = word_array.find_index do |letter|
        letter =~ (/[aAeEiIoOuU]/)
    end
    first_vowel_index
  end

  def rearrange_string(word_to_change)
    vowel_location = find_first_consonant(word_to_change)
    if vowel_location > 0
        pig_word = word_to_change.slice!(0,vowel_location)
        pig_latin = word_to_change << pig_word
        add_ay(pig_latin)
    else
        word_to_change + "way"
    end
  end

  def add_ay(pig_word)
    pig_word << "ay"
  end

  def piglatinize(complete_sentence)
    changed_sentence = complete_sentence.split(" ").map do |word|
        rearrange_string(word)
    end
    changed_sentence.join(" ")
  end

end
