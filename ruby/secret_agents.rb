# Define the method encrypt and insert parameter x
# Inside the method set a loop counter called i equal to 0
# Create an empty string that will hold the solution
# Setup a while loop where i is less than the length of our parameter (x)
# Then set the string variable to add the next letter of the parameter's index with the index being set to i
# Then set the loop counter (i) to increase by 1 at the end of each loop
# End the while loop
# Then set the string to print using "puts"
# Then end the method
# Then call the method using any parameter

def encrypt(x)
  i = 0
  string = ""
  while i < x.length
    if x[i].next == "aa"
      string += "a"
    else
      string += x[i].next
    end
   i += 1
  end
  puts string
end

# encrypt("abc")
# encrypt("zed")

# Define a method "decrypt" with parameter x
# setup a loop starting with an i that equals 0
# Create two variables, an alphabet variable with the alphabet in it and a string variable that is empty
# Setup a while loop where i is less than the length of x
# Set a new variable (new_var) equal to alphabet.index( )
# Then inside the parenthesis add index i of x
# Then set the string variable to add a new letter that is 1 index less than it originally was
# Then set the loop counter to increase by 1 at the end of the while loop
# Then end the while loop
# Then set string to print using puts
# Then end the method
# Then call the method

def decrypt(x)
  i = 0
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  string = ""
  while i < x.length
    new_var = alphabet.index(x[i])
    string += alphabet[new_var - 1]
    i += 1
  end
  puts string
end

# decrypt("bcd")
# decrypt("afe")
# decrypt(encrypt("swordfish"))

# Driver Code
# Ask a secret agent what they want to do with their password
puts "Hello secret agent, do you want to encrypt or decrypt your password?"
answer = gets.chomp

#check answer
if answer == "encrypt" || answer == "decrypt"
  # Ask for password
  puts "Alright lets #{answer} your password. What is your password?"
  password = gets.chomp
else
  #repeat question
  puts "sorry I do not understand your response. Do you want to encrypt or decrypt your password?"
  answer = gets.chomp
  puts "Alright lets #{answer} your password. What is your password?"
  password = gets.chomp
end

#conduct the requested operation
if answer == "encrypt"
  puts "Your encrypted password is:"
  puts encrypt(password)
else
  puts "Your decrypted password is:"
  puts decrypt(password)
end

