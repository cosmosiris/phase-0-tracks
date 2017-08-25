require_relative 'game_test'

describe WordGuess do
  let(:game) {WordGuess.new}

  it "sets a word" do
    expect(game.set_word("hello")).to eq "hello"
  end

  it "recieves a guess and creates a list" do
    expect(game.recieve_guess("heRo")).to eq "hero"
    expect(game.guess_list("hero")).to eq ["hero"]
    expect(game.recieve_guess("help")).to eq "help"
    expect(game.guess_list("help")).to eq ["hero", "help"]
    expect(game.recieve_guess("nice")).to eq "nice"
    expect(game.guess_list("nice")).to eq ["hero", "help", "nice"]
    expect(game.recieve_guess("There")).to eq "there"
    expect(game.guess_list("there")).to eq ["hero", "help", "nice", "there"]
  end

  it "checks a guess" do
    expect(game.set_word("hello")).to eq "hello"
    expect(game.recieve_guess("heLLo")).to eq "hello"
    expect(game.guess_check("hello")).to eq true
  end

  it "checks a guess" do
    expect(game.set_word("hello")).to eq "hello"
    expect(game.recieve_guess("heRo")).to eq "hero"
    expect(game.guess_check("hero")).to eq false
  end

end