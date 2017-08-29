// Create function that takes a string as a parameter
// iterate through string from the end
// add each letter of the string to a new variable

function reverse(string){
  var new_string = "";
  for(var i = string.length-1; i >= 0; i-- ){
  new_string += string[i];
  }
  if (new_string.length > 5){
    console.log(new_string);
  }
  else{
    console.log("This string is too short!");
  }
}

reverse("Sweetiepies")