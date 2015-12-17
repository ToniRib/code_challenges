require_relative 'translator'

t = Translator.new

loop do
  puts "Please enter a word you would like converted to pig latin:"

  word = gets.chomp
  break if word == 'exit!'

  puts t.convert_to_pig_latin(word)
end

puts "oodbye-gay!"
