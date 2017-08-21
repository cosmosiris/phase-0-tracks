class Santa
  attr_reader :age
  attr_accessor :age, :gender, :ethnicity
  def initialize(gender, ethnicity)
    puts "Initializing new santa instance . . ."
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
    puts "This santa is #{@gender} and #{@ethnicity}"
  end

  def speak
    puts "Ho, ho, ho! Haaaaapy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end

  def reindeer_ranking
    @ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    puts "My reindeer ranking from most preferred to least preferred is #{@ranking}"
  end

  #attribute-changing methods
  def celebrate_birthday
    @age = @age+1
    puts "Happy Birthday Santa! Congratulations on turning #{@age}"
  end

  def get_mad_at(name)
    @ranking.delete(name)
    @ranking.push(name)
    puts "New reindeer ranking from most preferred to least preferred is #{@ranking}"
  end

  # #getter methods
  # def age
  #   @age
  # end

  # def ethnicity
  #   @ethnicity
  # end

  # def gender
  #   @gender
  # end

  # #setter methods
  # def gender=(new_gender)
  #   @gender = new_gender
  # end
end

#Diverse Initializations
santa = []
santa << Santa.new("agender", "black")
santa << Santa.new("male", "latino")
santa << Santa.new("female", "black")
santa << Santa.new("gender fluid", "white")

i = 0
while i < santa.length
  p santa[i]
  i += 1
end

#Driver Code
santa = Santa.new("gender fluid", "latino")
santa.speak
santa.eat_milk_and_cookies("oatmeal")
santa.reindeer_ranking
santa.celebrate_birthday
santa.get_mad_at("Dasher")
santa.gender = "male"
puts "Santa's new gender is #{santa.gender}"
puts "Santa is now #{santa.age} years old"
puts "Santa's enthnicity is #{santa.ethnicity}"

#Release 4: Build Many Santas
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

15.times do
  Santa.new(example_genders.sample, example_ethnicities.sample)
  puts santa.age = rand(0...140)
end