
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
    if estimatedage == ''
      estimatedage = nil
    else
      estimatedage = estimatedage.to_i
    end

puts estimatedage

