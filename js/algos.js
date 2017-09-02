//7.3 Solo Challenge: Javascript Algorithms
// Release 0: Find the Longest Phrase
// write function that takes an array of strings and returns the longest phrase.
var phrase_sort = function(array){
  //create loop that determines length of each string and compares it to the string next to it
  for(var i = 0; i < array.length-1; i++){
    if (array[i].length > array[i+1].length){
      var phrase_to_switch = array[i];
      array[i] = array[i+1];
      array[i+1] = phrase_to_switch;
    }
  }
  console.log(array);
}

phrase_sort(["Iris", "Kathleen", "Nevins"]);