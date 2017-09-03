//7.3 Solo Challenge: Javascript Algorithms
// RELEASE 0: FINDING THE LONGEST PHRASE
// write function that takes an array of strings and returns the longest phrase.

var longest_phrase = function(array){
  //create loop that determines length of each string and compares it to the string next to it
  var sorted = false
  while(sorted == false){
    sorted = true;
    //^^makes sure that the while loop above does not stop until the for loop below makes an entire iteration without changing the value of sorted to false. Once an entire iteration happens without changing the value of sorted to false, we know that the array has been sorted. Sorted remains true and the function can return its output.
    for(var i = 0; i < array.length-1; i++){
      if (array[i].length > array[i+1].length){
        var phrase_to_switch = array[i];
        array[i] = array[i+1];
        array[i+1] = phrase_to_switch;
        sorted = false;
      }
    }
  }
  console.log(array[array.length-1]);
  return (array[array.length-1])
}

//RELEASE 1: FIND A KEY-VALUE MATCH
//write a function that takes two objects and checks to see if the objects share at least one key-value pair.

var key_value_match = function(hash_1, hash_2){
  //turn hash_1 into an array
  var keys_1 = Object.keys(hash_1);
  var array_1 = [];
  for(var i = 0; i < keys_1.length; i++){
    var key = keys_1[i];
    var value = hash_1[key];
    array_1.push(key + ":" + value);
  }
  console.log(array_1);

  //turn hash_2 into an array
  var keys_2 = Object.keys(hash_2);
  var array_2 = [];
  for(var i = 0; i < keys_2.length; i++){
    var key = keys_2[i];
    var value = hash_2[key];
    array_2.push(key + ":" + value);
  }
  console.log(array_2);

  //compare array_1 and array_2
  for(var j = 0; j < array_1.length; j++){
    var match = false;
    if (array_1[j] == array_2[j]){
      match = true;
    }
    console.log(match);
  }
}

//RELEASE 2: GENERATE RANDOM TEST DATA
// Write a function that takes an integer for length, and builds and returns an array of strings of the given length. So if we ran your function with an argument of 3, we would get an array of 3 random words back The words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters. Add driver code that does the following 10 times: generates an array, prints the array, feeds the array to your "longest word" function, and prints the result.

random_array_of_strings = function(number){
//create empty array that will become the final output
  var random_array_of_strings = [];
//make array of the alphabet
  var alphabet_string = "abcdefghijklmnopqrstuvwzyx";
  var alphabet_array = alphabet_string.split("");

//make random array loop
  for(n = 0; n < number; n++){
  //create a variable for a random number between 1 and 10 that will be used to determine the length of each word that goes inside the final array.
    var random_number = Math.floor((Math.random() * 10) +1);
  //create word variable that will take each random letter
    var word = ""
  // Second loop: using the random_number variable as the counter--select a random index from the alphabet array and push that to the word variable.
    for(i = 0; i < random_number; i++){
      var letter = alphabet_array[Math.floor(Math.random() * 27)];
      word = word + letter;
    }
  //Push the word variable into the random_array_of_strings
      random_array_of_strings.push(word);
  }
  console.log(random_array_of_strings);
}



// DRIVER CODE
longest_phrase(["Iris", "Kathleen", "Nevins", "Harold", "Andrea", "Dean"]);

key_value_match({name: "Stephen", age: 54}, {name: "Tamir", age: 54}); //false, true
key_value_match({animal: "Dog", legs: 4}, {animal: "Dog", legs: 8}); //true, false
key_value_match({name: "Steven", age: 54}, {name: "Shannon", age: 31}); //false, false
key_value_match({animal: "Dog", legs: 4}, {animal: "Spider", legs: 4}); //false, true

random_array_of_strings(2);
random_array_of_strings(4);
random_array_of_strings(6);