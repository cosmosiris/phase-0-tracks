def employee_process
  #opening questions
  def employee_survey
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

    #Allergies
      puts "Please enter your allergies one at a time. Once you've entered them all type the word done"
      allergy = gets.chomp
      until allergy == "done" || allergy == "sunshine"
        puts "Please enter your allergies one at a time. Once you've entered them all type the word done"
        allergy = gets.chomp
      end

    # Conditional Results
    if allergy == "sunshine"
      puts "Probably a vampire"
    elsif (2017 - birthyear.to_i === age.to_i) && bread === "yes" || insurance === "yes"
        if name === "Drake Cula" || name === "Tu Fang"
          puts "Definitely a vampire"
        else
          puts "Probably not a vampire"
        end
    elsif (2017 - birthyear.to_i != age.to_i) && bread === "no" || insurance === "no"
      puts "Probably a vampire"

    elsif (2017 - birthyear.to_i != age.to_i) && bread === "no" && insurance === "no"
      puts "Almost certainly a vampire"

    else
      puts "Results inconclusive"
    end
  end

  #execute program
  puts "How many employees do you plan to process?"
  employee_count = gets.chomp
  i = 0
  while i < employee_count.to_i
    puts employee_survey
    i += 1
  end
end

employee_process

