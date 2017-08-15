# Client Questionaire
# Prompt the designer/user for their information and convert any user input to the appropriate data type.
client_application = {
  first_name: "",
  last_name: "",
  age: "",
  number_of_children: "",
  decor_theme: "",
  new_client: "",
  referral: ""
}
puts "Hello, please fill out the following survey"
puts "Enter your first name"
client_application[:first_name] = gets.chomp.upcase
puts "Enter your last name"
client_application[:last_name] = gets.chomp.upcase
puts "Enter your age"
client_application[:age] = gets.chomp.to_i
puts "Enter the number of children you have"
client_application[:number_of_children] = gets.chomp.to_i
puts "Enter your peferred decor theme"
client_application[:decor_theme] = gets.chomp.upcase
puts "Are you a new client?"
client_application[:new_client]  = gets.chomp.upcase.include?("YES")
puts "Were you referred by one of our customers?"
client_application[:referral] = gets.chomp.upcase.include?("YES")

# Print the hash back out to the screen when the designer has answered all of the questions.
puts client_application

# Give the user the opportunity to update a key
puts "Do you need to update any of your answers?"
update = gets.chomp.upcase.include?("YES")
if update == false
  puts "Thanks, have a good day"
else
  puts "Which of the following would you like to update: first_name, last_name, age, number_of_children, decor_theme, new_client, referral?"
  answer = gets.chomp.downcase
  if answer == "first_name"
    puts "Re-enter your first name"
    client_application[:first_name] = gets.chomp.upcase
  elsif answer == "last_name"
    puts "Re-enter your last name"
    client_application[:last_name] = gets.chomp.upcase
  elsif answer == "age"
    puts "Re-enter your age"
    client_application[:age] = gets.chomp.to_i
  elsif answer == "number_of_children"
    puts "Re-enter the number of children you have"
    client_application[:number_of_children] = gets.chomp.to_i
  elsif answer == "decor_theme"
    puts "Re-enter the decor theme"
    client_application[:decor_theme] = gets.chomp.upcase
  elsif answer == "new_client"
    puts "Are you a new client"
    client_application[:new_client] = gets.chomp.upcase.include?("YES")
  elsif answer == "referral"
    puts "Were you referred by one of our customers?"
    client_application[:referral] = gets.chomp.upcase.include?("YES")
  else
    "I don't understand your response. Have a nice day"
  end
end
puts client_application