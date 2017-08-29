puts "How many employees today?"
employees = gets.chomp
employees = employees.to_i
vampire = false

while employees >= 1 && vampire == false

  puts "What is your name?"
  name = gets.chomp

  puts "How old are you?"
  age = gets.chomp
  age = age.to_i

  puts "What year were you born?"
  year = gets.chomp
  year = year.to_i

  puts "Would you like garlic bread?"
  garlic = gets.chomp
  if garlic = 'y' || 'Y' || 'yes' || 'Yes'
    garlic = true
  else
    garlic = false
  end

  puts "Would you like to enroll in the company health insurance?"
  insurance = gets.chomp
  if insurance = 'y' || 'Y' || 'yes' || 'Yes'
    insurance = true
  else
    insurance = false
  end

  puts "Please enter allergies (one at a time). Enter 'done' when finished."
  allergy = gets.chomp
  until allergy == 'done' do
    puts "Please enter additional allergies."
    allergy = gets.chomp
    if allergy == 'sunshine'
      vampire = true
      puts "Probably a vampire"
      break
    end
  end

  current_year = 2017

  def age_right(current_year, year, age)
    calc_age = (current_year - year)
    if calc_age == age
      age_right = true
    else
      age_right = false
    end
  end

  if vampire == false
    if name == "Drake Cula"
      puts "Definitely a vampire."
    elsif name == "Tu Fang"
      puts "Definitely a vampire."
    elsif age_right(current_year, year, age) && garlic && insurance
      puts "Probably not a vampire."
    elsif !(age_right(current_year, year, age)) && (garlic || insurance)
      puts "Probably a vampire."
    elsif !(age_right(current_year, year, age) &&  garlic && insurance)
      puts "Almost certainly a vampire."
    else
      puts "Results inconclusive"
    end
  end

  employees -= 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."