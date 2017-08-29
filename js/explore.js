// Create function that takes a string as a parameter
// iterate through string from the end
// add each letter of the string to a new variable

function reverse(string){
  new_string = ""
  for(var i = string.length-1; i >= 0; i-- ){
  new_string = new_string + string[i]
  }
  console.log(new_string)
}

reverse("Iris")