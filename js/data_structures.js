//Release 1
//declare variables
var colors = ["blue", "red", "yellow", "pink"];

var horses = ["Kitty", "Joe", "Bambi", "Simba"];

//add to variables
colors.push("gold");
horses.push("Sam");

console.log(colors);
console.log(horses);

//create a function that can take two parameters, a horse name and a color and insert them into a object(same as a ruby hash)

function horse_info(){
  //declare the new object
  var horse_object = {}

  //access the horses array
  for(var i = 0; i < horses.length; i++){
      horse_object[horses[i]] = colors[i]
  }
  return horse_object;
}

console.log(horse_info())

//Release 2
//Horses are great, but times are a-changin', and we need to add an option for faster transportation that we can create with an assembly line. Write a constructor function for a car. Give it a few different properties of various data types, including at least one function. Demonstrate that your function works by creating a few cars with it.

function Car(model, year, color, isUsed){
  this.model = model;
  this.year = year;
  this.color = color;
  this.isUsed = isUsed;
  this.age = function(year){console.log("This car is " + 2017-year + " years old");};
}