//7.3 Solo Challenge: Javascript Algorithms
// RELEASE 0: FINDING THE LONGEST PHRASE
// write function that takes an array of strings and returns the longest phrase.
//Instructor notes: In your longest_phrase function, you are doing a bit of extra work by first sorting the array of phrases and then selecting the last one. Since this function only needs to return one word...the longest word...you can set up a variable to keep track of the current longest word. That way, you only need to loop over the array one time. If the current word in the array is longer than the variable you declared as the longest word, simply reset that variable to the current word in the iteration. If it is shorter than the word stored in that variable, move on to the next loop of your iteration. Return the word that is stored in that variable at the end

var longest_phrase = function(phrase){
  var current_longest_word = " ";
  for(i = 0; i<phrase.length; i++){
    if(phrase[i].length > current_longest_word.length){
      current_longest_word = phrase[i];
    }
  }
  return current_longest_word;
}

//RELEASE 1: FIND A KEY-VALUE MATCH
//write a function that takes two objects and checks to see if the objects share at least one key-value pair
//Instructor comments: The more unnecessary work you do to process data, the more error prone your code usually is (and the longer it takes to run, a lot of the time). In your key_value_match function, it is not necessary to manipulate the data in the objects into a stringified array of things. Rather, consider using a for (var key in hash_1) { ... } loop. (Also, be aware of the fact that although that data structure is called a hash in Ruby, it is called an object in JavaScript). The other issue with the way you've built and compared these arrays of data is that finding a match is dependent upon the order of the arrays. Therefore, if the first key/value pair in object 1 is the same as the last key/value pair in object 2, your function will console.log false, even though the objects have a match.

var key_value_match = function(object_1, object_2){
  for(property in object_1){
    var key = property;
    var value = object_1[property];
    for(prop in object_2){
      if ((key === prop) && (value === object_2[prop])){
        return true;
        }
    }
  }
  return false;
}

//RELEASE 2: GENERATE RANDOM TEST DATA
// Write a function that takes an integer for length, and builds and returns an array of strings of the given length. So if we ran your function with an argument of 3, we would get an array of 3 random words back. The words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters. Add driver code that does the following 10 times: generates an array, prints the array, feeds the array to your "longest word" function, and prints the result.
//Instructor comments: The logic for your function to generate random test data is sound. The only major comment I would make here is that this function has two very distinct responsibilities...it generates an array of a random length, and it builds words to put into the array. You might consider breaking out the code that generates a random word into a function of its own to separate responsibilities here. You can then call on that function from inside random_array_of_strings in order to continue to generate words to add to the array. The benefit of breaking that code out is that random_array_of_strings would be easier to read, and you could test the behavior of generating words of random lengths separately from the array building functionality.

var random_array_of_strings = function(number){

  //function that generates words
  var create_word = function(){
    var alphabet = "abcdefghijklmnopqrstuvwxyz";
    var word = "";
    var random_number = Math.floor((Math.random() * 10) + 1);
    for(i = 0; i < random_number; i++){
      var letter = alphabet[Math.floor(Math.random() * 27)];
      word += letter;
    }
    return word;
  }

  //function that generates random array of strings
  var create_random_array_of_strings = function(number){
    var random_array_of_strings = [];
    for(n = 0; n < number; n++){
      random_array_of_strings.push(create_word());
    }
    return random_array_of_strings;
  }


  return create_random_array_of_strings(number);
}



// DRIVER CODE
console.log(longest_phrase(["Iris", "Kathleen", "Nevins", "Harold", "Andrea", "Dean"]));

console.log(key_value_match({ name: "Stephen", age: 54 }, { name: "Tamir", age: 53 })); //false
console.log(key_value_match({animal: "Dog", legs: 4}, {animal: "Dog", legs: 8})); //true
console.log(key_value_match({name: "Steven", age: 54}, {name: "Shannon", age: 31})); //false
console.log(key_value_match({animal: "Dog", legs: 4}, {animal: "Spider", legs: 4})); //true

console.log(random_array_of_strings(2));
console.log(random_array_of_strings(4));
console.log(random_array_of_strings(6));

//COMPLEX DRIVER CODE COMBINING RANDOM_ARRAY_OF_STRINGS AND LONGEST_PHRASE
for (x = 0; x <= 10; x++){
  var phrase = random_array_of_strings(Math.floor((Math.random() * 10) + 1))
  console.log(phrase);
  console.log(longest_phrase(phrase));
}






