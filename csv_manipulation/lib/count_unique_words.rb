require 'pry'

class CountUniqueWords
  def unique(arr)
    arr.uniq.count
  end

  def count(filepath)
    unique(FileReader.new.read(filepath))
  end
end

class FileReader
  def read(filepath)
    words = []

    File.open(filepath, "r").each_line do |line|
      words += line.split
    end

    sanitize(words)
  end

  def sanitize(words)
    words.map do |word|
      word.downcase.gsub(/[^a-z]/i, '')
    end
  end
end
