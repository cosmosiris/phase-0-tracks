# Define class
class WordGuess
  attr_reader :is_over
  attr_accessor :guess, :word, :guess_array

  def initialize
    @guess_array =[]
    @is_over = false
  end

  def set_word(word)
    @word = word.downcase
  end

  def recieve_guess(guess)
    @guess = guess.downcase
  end

  def guess_list(guess)
    @guess_array << @guess
    @guess_array.uniq!
    @guess_array
  end

  def guess_check(guess)
    if @guess == @word
      @is_over = true
    elsif @guess_array.length == @word.length
      @is_over = true
    else
      @is_over = false
    end
  end
end

# Driver Code
puts "Welcome to the Word Guessing Game"
game = WordGuess.new

#Enter word
puts "Hi user number 1. Please enter the word you would like user number 2 to guess"
word = gets.chomp
game.set_word(word)

#Loop
while !game.is_over
  #Enter guess
  puts "Enter the word you think user number 1 entered"
  guess = gets.chomp

  #Recieve, store, and check guess
  game.recieve_guess(guess)
  game.guess_list(guess)
  game.guess_check(guess)
  if guess == word
    puts "Congratulations, you are so smart"
  elsif game.guess_array.length == word.length
    puts "Sorry, you lose"
  else
    puts "Wrong, you have #{word.length - game.guess_array.length} attempts remaining"
      #guessing player recieives continual feedback on current state of the word
      puts "Here is a hint: the word has the letter #{word[rand(word.length)]}"
  end
end


