# #6.7 Solo Challenge

# Define class
class WordGuess
  attr_reader :word
  attr_accessor :guess
# Initialize and add instance variables
  def initialize
    @word = word
    @guess = guess
  end
#method for one user to enter a word
  def set_word(word)
    @word = word
  end
#method for second user to guess the word
#method to check the guess against the word
  def guess_check(guess)
    @guess = guess
    if @guess == @word
      puts "Congratulations, you are so smart"
    else
      puts "You lose. Go home stupid"
  end

end

# Driver Code
#Enter word
puts "Hi user number 1. Please enter the word you would like user number 2 to guess"
word = gets.chomp
set_word(word)

#Enter guess
puts "Hi user number 2. Please guess the word that you think user number two entered"
guess = gets.chomp

#Check guess
guess_check(guess)

#limit guesses to length of the word, except repeat guesses do not count against the user

#guessing player recieives continual feedback on current state of the word

#User recieves a congratulatory message if they win and a taunting message if they lose
