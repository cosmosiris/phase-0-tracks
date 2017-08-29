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
  this.age = function() {console.log("This car is " + (2017-year) + " years old"); };
}

var iris_car = new Car("Toyota", 2009, "white", false);
console.log(iris_car);
iris_car.age();

var lina_car = new Car("Jeep", 2017, "grey", true)
console.log(lina_car);
lina_car.age();

//Release 3:
//how do you loop through the keys and values of an object?
//We Could only find one method which is a for loop.
var hash = {name: "iris", age: 40, gender: "female"};
for (var key in hash){
  console.log(key + " : " + hash[key]);
}


//Are there advantages to using constructor functions to create objects? Disadvantages?
//the object constructor allows you to make new objects of the same type. It is faster and more efficient than making each object one at a time.
  //1. Advantage: Constructors have better memory performance.
  //2. Advantage: Less likely to make a mistake because they all follow the format of the constructor
  //3. Disadvantage: you always have to construct a child of a pre-defined object. If you want to add a new parameter to just one object you must add it to the constructor first which impacts all objects made from it.
  //Disadvantage: you might forget to type new


