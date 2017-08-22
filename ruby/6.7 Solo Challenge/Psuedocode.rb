# #6.7 Solo Challenge

# Define class
class WordGuess
  attr_reader :word, :guess_count
  attr_accessor :guess
# Initialize and add instance variables
  def initialize
    @word = word
    @guess = guess
    @guess_count = 0
    @guess_array =[]
  end
#method for one user to enter a word
  def set_word(word)
    @word = word
  end
#method for second user to guess the word
#method to check the guess against the word
#Check guess and limit guesses to length of the word, except repeat guesses do not count against the user.
  def guess_check(guess)
    @guess = guess
    @guess_array << guess
    @guess_count += 1
    if @guess.downcase == @word.downcase
      puts "Congratulations, you are so smart"
    else
      puts "Wrong, you have #{word.length - @guess_count} attempts remaining"
    end
    @guess_array.uniq!
    puts @guess_array
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
while game.guess_count < word.length
  #Enter guess
  puts "Enter the word you think user number 1 entered"
  guess = gets.chomp

  #Check Guess
  game.guess_check(guess)

end


#guessing player recieives continual feedback on current state of the word

#User recieves a congratulatory message if they win and a taunting message if they lose
