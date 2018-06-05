class PigLatinizer

  attr_accessor :string

  def initialize(string)
    @string = string.downcase
  end

  def find_first_consonant(original_word)
    word_array = original_word.chars
    first_vowel_index = word_array.find_index do |letter|
        letter =~ (/[aeiou]/)
    end
    first_vowel_index
  end

  def rearrange_string

    vowel_location = find_first_consonant

    if vowel_location > 0
        # pig_word_start = @string.slice!(0,vowel_location)
        # @string << pig_word_start
        pig_word = @string.slice(0,vowel_location) + @string.slice(vowel_location, 0)
        add_ay(pig_word)
    else
        pig_word = @string
    end

  end


  def add_ay(pig_word)
    pig_word << "ay"
  end



end



class PigLatinizer

  # attr_accessor :string

  # def initialize(string)
  #   @string = string.downcase
  # end

  # def find_first_consonant(original_word)
  #   word_array = original_word.chars
  #   first_vowel_index = word_array.find_index do |letter|
  #       letter =~ (/[aeiou]/)
  #   end
  #   first_vowel_index
  # end

  def rearrange_string#(pig_word)

    pig_word + "!!!"

    # vowel_location = find_first_consonant(pig_word)
    #
    # if vowel_location > 0
    #     # pig_word_start = @string.slice!(0,vowel_location)
    #     # @string << pig_word_start
    #     string_wihout_ay = pig_word.slice(0,vowel_location) + pig_word.slice(vowel_location, 0)
    #     add_ay(string_wihout_ay)
    # else
    #     pig_word
    # end

  end

  #
  # def add_ay(to_change)
  #   pig_word << "ay"
  # end
  #


end
