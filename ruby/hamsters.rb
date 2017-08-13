
  puts "What's the hamster's name?"
  hamstername = gets.chomp

  puts "What's the hamster's volume level?"
  volume = gets.chomp.to_i

  puts "What's the hamster's fur color?"
  furcolor = gets.chomp

  puts "Is the hamster a good candidate for adoption?"
  adoption = gets.chomp
    if adoption.downcase == "yes"
      adoption = "is"
    else
      adoption = "is not"
    end

  puts "Estimated age?"
  estimatedage = gets.chomp
    if estimatedage == ''
      estimatedage = nil
    else
      estimatedage = estimatedage.to_i
    end

puts "This hamster's name is #{hamstername}, its volume level is #{volume}, and its fur color is #{furcolor}. It is estimated to be #{estimatedage} years old and #{adoption} suitable for adoption."


