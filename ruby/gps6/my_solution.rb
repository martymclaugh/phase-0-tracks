
# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_realtive adds a local file
#
require_relative 'state_data'

class VirusPredictor

  # Runs when a new instance of a class is called. Takes 3 parameters for later use.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # calls predicted deaths and speed of spread with their given parameters.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # predicts deaths based on population density, using population density, population, and state. Returns a rounded down integer and prints the results.
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density 
    when(0..50)
      ratio = 0.05
    when(150..199)
      ratio = 0.3
    when(100..149)
      ratio = 0.2
    when(50..99)
      ratio = 0.1
    else
      ratio = 0.4
    end
    number_of_death = (@population * ratio).floor
    print "#{@state} will lose #{number_of_death} people in this outbreak"

  end

  # determines speed of spread using the population density and state. prints the results.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    case @population_density
    when(0..49)
      speed += 2.5
    when(150..199)
      speed += 1
    when(100..149)
      speed += 1.5
    when(50..99)
      speed += 2
    else
      speed += 0.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, pop|
  # puts  "#{x}   #{y}   **********#{z}"
  viruspredictor = VirusPredictor.new(state, pop[:population_density], pop[:population])
  viruspredictor.virus_effects
end









#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
  # The larger hash contains all of the states as keys, and then smaller hashes as the value.
# What does require_relative do? How is it different from require?
  # require relative allows you to link your code to another file in the same directory whereas require lets you link your code with a library off the internet.
# What are some ways to iterate through a hash?
  # I felt like the block line code with the ".each" method was the most simple way to iterate through the hash.
# When refactoring virus_effects, what stood out to you about the variables, if anything?
  # The variables appeared on every line, we refactored it using a case statement in order to have to only call the variable once.
# What concept did you most solidify in this challenge?
  # I had previously only researched case statements and never actually put them to use. Using them in this challenge definitely helped solidify the statement for me.