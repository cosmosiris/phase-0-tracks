puts "What is your name?: "
name = gets.chomp

puts "How old are you?: "
age = gets.chomp

puts "What year were you born?: "
birthyear = gets.chomp

puts "Our company cafeteria serves garlic bread. Should we order some for you?: "
bread = gets.chomp

puts "Would you like to enroll in the company's health insurance?: "
insurance = gets.chomp

if (birthyear.to_i-2017 == age.to_i) && bread == "yes" || insurance == "yes"
    if name == "Drake Cula" || name == "Tu Fang"
      puts "Definitely a vampire"
    elsif
      puts "Probably not a vampire"
    end
elsif (birthyear.to_i-2017 != age.to_i) && bread == "no" ||insurance == "no"
  puts "Probably a vampire"

elsif (birthyear.to_i-2017 != age.to_i) && bread == "no" &&insurance == "no"
  puts "Almost certainly a vampire"

else
  puts "Results inconclusive"
end

