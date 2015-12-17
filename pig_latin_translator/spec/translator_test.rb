require 'translator'
require 'minitest/autorun'
require 'minitest/pride'

class TranslatorTest < Minitest::Test
  def setup
    @translator = Translator.new
  end

  def test_returns_index_of_first_vowel_in_word
    assert_equal 0, @translator.first_vowel_index('apple')
  end

  def test_returns_index_of_first_vowel_in_different_word
    assert_equal 1, @translator.first_vowel_index('cat')
  end

  def test_returns_index_of_first_vowel_in_word_with_multiple_vowels
    assert_equal 1, @translator.first_vowel_index('caterpillar')
  end

  def test_returns_true_if_first_letter_is_vowel
    assert @translator.first_letter_is_a_vowel('apple')
  end

  def test_returns_false_if_first_letter_is_not_a_vowel
    refute @translator.first_letter_is_a_vowel('banana')
  end

  def test_translates_cat_to_pig_latin
    assert_equal 'at-cay', @translator.convert_to_pig_latin('cat')
  end

  def test_translates_pineapple_to_pig_latin
    assert_equal 'ineapple-pay', @translator.convert_to_pig_latin('pineapple')
  end

  def test_translates_apple_to_pig_latin
    assert_equal 'apple-way', @translator.convert_to_pig_latin('apple')
  end

  def test_translates_eggplant_to_pig_latin
    assert_equal 'eggplant-way', @translator.convert_to_pig_latin('eggplant')
  end
end
