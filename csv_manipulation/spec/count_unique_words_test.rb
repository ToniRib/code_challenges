require 'minitest/autorun'
require 'minitest/pride'
require 'count_unique_words'

class CountUniqueWordsTest < Minitest::Test
  def test_class_exists
    assert CountUniqueWords
  end

  def test_counts_unique_words_in_an_array
    counter = CountUniqueWords.new
    a = %w(kitty cat meow meow kitty purr fluff)

    assert_equal 5, counter.unique(a)
  end

  def test_counts_unique_words_in_small_file
    counter = CountUniqueWords.new
    filepath = './swift_stats/short_lyrics.txt'

    num = counter.count(filepath)

    assert_equal 20, num
  end

  def test_counts_unique_words_in_lyrics_file
    counter = CountUniqueWords.new
    filepath = './swift_stats/lyrics.txt'

    num = counter.count(filepath)

    assert_equal 1984, num
  end
end
