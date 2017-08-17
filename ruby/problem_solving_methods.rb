#release 0: Write a method that takes an array of integers and an integer to search for. The method should return the index of the item, or nil if the integer is not present in the array.

# def search_array(array, integer)
#   i = 0
#   while i < array.length
#     if array[i] == integer
#       puts i
#     end
#     i += 1
#   end
# end

# arr = [43, 89, 23, 1, 54, 100, 72, 33, 5]
# p search_array(arr, 5)
# p search_array(arr, 24)

# release 1: calculate fibonacci numbers
# def fib(num)
#   fib_array = [0, 1]
#   i = 0
#   while i < num-2
#     sum = fib_array[i] + fib_array[i+1]
#     fib_array.push(sum)
#     i += 1
#   end
#   fib_array
#   end
# end

# p fib(6)
# p fib(100)

#release 2: sort an array
