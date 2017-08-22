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







