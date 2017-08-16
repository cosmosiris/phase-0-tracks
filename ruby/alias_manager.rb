# Create alias method
def alias_method(full_name)
  #split the name into two separate words
  name_array = full_name.split(" ")

  #Swap the first and last name
  name_array.reverse!

  #re-join first and last name into a string
  full_name = name_array.join(" ").downcase
  # full_name

  #replace all vowels with the next vowel in the alphabet
  vowel_name = full_name.tr("aeiou", "eioua")


  # Change all of the consonants (everything else besides the vowels) to the next consonant in the alphabet.
  vowel_consonant_name = vowel_name.tr("bcdfghjklmnpqrstvwxyz", "cdfghjklmnpqrstvwxyzb")

  #capitalize first letter of each name
  alias_first_name = vowel_consonant_name.split(" ")[0].capitalize
  alias_last_name = vowel_consonant_name.split(" ")[1].capitalize

  #join first and last name
  alias_name = alias_first_name + " " + alias_last_name
end

# ask user for their name and return alias
def alias_manager
  puts "Hello please provide your first name"
  name_1 = gets.chomp

  puts "please provide your last name"
  name_2 = gets.chomp

  full_name = name_1 + " " + name_2
  puts "Thank, you. Your secret agent name is: "
  puts alias_method(full_name)

  #push name and alias into data structure
  data_structure = {}
  data_structure[full_name] = alias_method(full_name)

  #allow user to enter multiple names until they ask to quit
  puts "If you would like to try another name, please enter another first and last name. If not, please type 'quit' "
  full_name = gets.chomp
  until full_name.downcase == "quit"
    puts "Thank, you. Your secret agent name is:"
    puts alias_method(full_name)
    #store each name in a data structure
    data_structure[full_name] = alias_method(full_name)
    puts "If you would like to try another name, please enter another first and last name. If not, please type 'quit' "
    full_name = gets.chomp
  end
    puts "Thank, you. have a nice day."
    puts data_structure
    data_structure.each do |name,new_name|
      puts "#{name} will be known as #{new_name}"
    end
end

alias_manager

