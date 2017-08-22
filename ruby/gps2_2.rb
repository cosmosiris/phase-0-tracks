# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # 1. split the string into an array of strings
  # 2. create an empty hash
  # 3. iterate through array to add each string to the hash as a key
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]
  def grocery_list(items)
    array_of_items = items.split(" ")
    grocery_hash = {}
    # i = 0
    # while i < array_of_items.length
    #   grocery_hash[array_of_items[i]] = 1
    #   i+=1
    # end
    array_of_items.each {|item| grocery_hash[item] = 1}
    p grocery_hash
  end

example_list = grocery_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: define a method that takes as its parameters a hash and adds the named item & its quantity to the hash
# output: updated hash
  def add_item(grocery_hash,new_item,quantity=1)
    grocery_hash[new_item] = quantity
    p grocery_hash
  end

add_item(example_list,"mangoe",2)
add_item(example_list,"loaf of bread")


# Method to remove an item from the list
# input: list, item to be removed
# steps: create a method that takes the list, searches for the item to be removed, and removes it
# output: updated hash
  def remove_item(grocery_hash,item_to_remove)
    grocery_hash.delete(item_to_remove)
    p grocery_hash
  end

remove_item(example_list,"carrots")

# Method to update the quantity of an item
# input: list, item to be updated, and the new quantity
# steps: create a method that takes a list, searches for the item to be updated, and then updates the quantity with the new quantity
# output: updated list
  def update_quantity(grocery_list,item,new_quantity)
    grocery_list[item] = new_quantity
    p grocery_list
  end

update_quantity(example_list, "mangoe", 10)

# Method to print a list and make it look pretty
# input: take a list
# steps: eliminate curly braces and add a : after each key-value pair
# output: no output

def pretty_list(grocery_list)
  grocery_list.each do |item,quantity|
    puts "#{item}: #{quantity}"
  end
end

pretty_list(example_list)

#Release 4: Reflect
# What did you learn about pseudocode from working on this challenge? I learned that psuedocoding is a great way to make sure you understand what you need to do before you start coding

# What are the tradeoffs of using arrays and hashes for this challenge? It is very easy to convert a string to an array but you cannot do the same for hashes. Hashes are great for storing pairs of data, which you cannot do with an array.

# What does a method return? Methods return the results of the instructions within the method. The results could be a manipulated data set or it could just be a representation of the data set.

# What kind of things can you pass into methods as arguments? You can pass data types such as strings, arrays, numbers, booleans, and hashes.

# How can you pass information between methods? You can do this by making the information the parameters of more than one method.

# What concepts were solidified in this challenge, and what concepts are still confusing? I solidifed how to add a key-value pair to a hash and how to update the key or value of a hash. That was hard for me to remember before.