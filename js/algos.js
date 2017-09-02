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


}



// DRIVER CODE
longest_phrase(["Iris", "Kathleen", "Nevins", "Harold", "Andrea", "Dean"]);

key_value_match({name: "Stephen", age: 54}, {name: "Tamir", age: 50}); //false, false
// key_value_match({animal: "Dog", legs: 4}, {animal: "Dog", legs: 8}); //true, false
// key_value_match({name: "Steven", age: 54}, {name: "Shannon", age: 31}); //false, false
// key_value_match({animal: "Dog", legs: 4}, {animal: "Spider", legs: 4}); //false, true