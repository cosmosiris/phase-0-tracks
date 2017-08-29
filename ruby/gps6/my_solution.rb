# Virus Predictor

# I worked on this challenge [with: Diem].
# We spent 1.5 hours together on this challenge and 1 hour alone.

# EXPLANATION OF require_relative
# require_relative links a file to the current file using a relative path.
# require links to a pre-exisiting library of data/code.
require_relative 'state_data'

class VirusPredictor
# this method creates an new instance of the VirusPredictor class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# this method executes the predicted_deaths and speed_of_spread methods for an instance.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

# this method determines the number of deaths based on population density and population size.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end


#this method tells us how many months it takes for the virus to spread based on population density.
  def speed_of_spread
    #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state_name, population_info|
  state = VirusPredictor.new(state_name, population_info[:population_density], population_info[:population])
  state.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
  # One hash syntax uses a symbol the other uses a string and an arrow =>

# What does require_relative do? How is it different from require?
  #it links a relative or related file so that we can separate the code into two different files. Require is used to link to libraries and other pre-existing open-source code

# What are some ways to iterate through a hash?
  #You can iterate using the .each method or a while loop.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
  #nothing really except that sometimes the names could be easily mixed up.

# What concept did you most solidify in this challenge?
  #I solidified the concept of refactoring code to make it dry. It is clear now that inside of a class you do not need to pass instance variables to methods because the instance variables are accessibly by all methods inside the class.