require 'pry'

class CountUniqueWords
  def unique(arr)
    arr.uniq.count
  end

  def count(filepath)
    words = FileReader.new.read(filepath)
    unique(sanitize(words))
  end

  def sanitize(words)
    words.map do |word|
      word.downcase.gsub(/[^a-z]/i, '')
    end.reject { |w| w.empty? }
  end
end

class FileReader
  def read(filepath)
    words = []

    File.open(filepath, "r").each_line do |line|
      words += line.split
    end

    words
  end
end
