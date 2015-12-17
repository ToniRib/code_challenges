class Translator
  def convert_to_pig_latin(word)
    if first_letter_is_a_vowel(word)
      "#{word}-way"
    else
      split_word_and_append_ay(word)
    end
  end

  def first_vowel_index(word)
    /[aeiou]/ =~ word
  end

  def first_letter_is_a_vowel(word)
    first_vowel_index(word) == 0
  end

  def split_word_and_append_ay(word)
    vowel = word[first_vowel_index(word)..-1]
    consonant = word[0..first_vowel_index(word)-1]
    "#{vowel}-#{consonant}ay"
  end
end
