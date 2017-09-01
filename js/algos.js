//7.3 Solo Challenge: Javascript Algorithms
// Release 0: Find the Longest Phrase
// write function that takes an array of strings and returns the longest phrase.
function longest_phrase(array){
  //create loop that determines length of each string and compares it to the string next to it
  var array_replace = ""
  for(var i = 0; i < array.length; i++){
    if (array[i].length > array[i+1].length){
      array_replace = array[i];
      array[i] = array[i+1];
      array[i+1] = array_replace;
    }
  }
  console.log(array)
}

longest_phrase(["Iris", "Kathleen", "Nevins"]);