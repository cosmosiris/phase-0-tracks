def hamster_intake
  puts "What's the hamster's name?"
  hamstername = gets.chomp

  puts "What's the hamster's volume level?"
  volume = gets.chomp

  puts "What's the hamster's fur color?"
  furcolor = gets.chomp

  puts "Is the hamster a good candidate for adoption?"
  adoption = gets.chomp

  puts "Estimated age?"
  estimatedage = gets.chomp
  estimatedage = estimatedage.to_i
    if estimatedage >= 1
  estimatedage
    else
  estimatedage = nil
    end

end