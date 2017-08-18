#release 0: Write a method that takes an array of integers and an integer to search for. The method should return the index of the item, or nil if the integer is not present in the array.

def search_array(array, integer)
  i = 0
  while i < array.length
    if array[i] == integer
      puts i
    end
    i += 1
  end
end

arr = [43, 89, 23, 1, 54, 100, 72, 33, 5]
p search_array(arr, 5)
p search_array(arr, 24)

# release 1: calculate fibonacci numbers
def fib(num)
  fib_array = [0, 1]
  i = 0
  while i < num-2
    sum = fib_array[i] + fib_array[i+1]
    fib_array.push(sum)
    i += 1
  end
  fib_array
  end
end

p fib(6)
p fib(100)

#_________release 2: sort an array_______________
#----------not ruby specific solution----------
def sorting(array)
  #set a variable equal to the length of the array
  n = array.length

  #create main loop and set a variable equal to false. This variable will break the loop once all the swaps have been made
  loop do
    swapped = false

    #create a times loop
    (n-1).times do |i|
      if array[i] > array[i+1]
        switch = array[i+1] #store element to be swapped in a temporary variable
        array[i+1] = array[i]
        array[i] = switch
        swapped = true #if a swap happens then break variable becomes true. Either way, the .times loop will happen again until i reaches n-1
      end
    end

    #once .times loop ends
    break if !swapped
  end

  array
end

array = [4, 9, 3, 7]
p sorting(array)

-----------#ruby specific solution ---------------
def sorting_1(array)
  n = array.length

  loop do
    swapped = false
    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

array_1 = [7, 4, 2, 6]
p sorting_1(array_1)