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

encrypt("abc")
encrypt("zed")

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

decrypt("bcd")
decrypt("afe")

