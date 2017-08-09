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
    string += x[i].next
    i += 1
  end
  puts string
end

encrypt("abc")




