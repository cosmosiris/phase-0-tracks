# #6.7 Solo Challenge

# Define class
class WordGuess
  attr_reader :word, :is_over
  attr_accessor :guess, :guess_array
# Initialize and add instance variables
  def initialize
    @word = word
    @guess = guess
    @guess_array =[]
    @is_over = false
  end
#method for one user to enter a word
  def set_word(word)
    @word = word
  end
#method for second user to guess the word
#method to check the guess against the word
#Check guess and limit guesses to length of the word, except repeat guesses do not count against the user.User recieves a congratulatory message if they win and a taunting message if they lose
  def guess_check(guess)
    @guess = guess
    @guess_array << guess
    @guess_array.uniq!
    if @guess.downcase == @word.downcase
      puts "Congratulations, you are so smart"
      @is_over = true
    elsif guess_array.length == word.length
      puts "Sorry, you lose"
      @is_over = true
    else
      puts "Wrong, you have #{word.length - @guess_array.length} attempts remaining"
      #guessing player recieives continual feedback on current state of the word
      puts "Here is a hint: the word has the letter #{@word[rand(word.length)]}"

    end
    puts "These are your guesses so far: #{@guess_array}"
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

  #Check Guess
  game.guess_check(guess)
end




