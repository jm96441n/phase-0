# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#

require_relative 'state_data'
class VirusPredictor
  attr_accessor :number_of_deaths, :speed
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density

  end

  def virus_effects
    predicted_deaths
    speed_of_spread
    print_death
    print_speed
  end

  private

  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      @number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      @number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      @number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      @number_of_deaths = (@population * 0.1).floor
    else
      @number_of_deaths = (@population * 0.05).floor
    end
  end

  def print_death
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    @speed = 0.0

    if @population_density >= 200
      @speed += 0.5
    elsif @population_density >= 150
      @speed += 1
    elsif @population_density >= 100
      @speed += 1.5
    elsif @population_density >= 50
      @speed += 2
    else
      @speed += 2.5
    end
  end

  def print_speed
    puts " and will spread across the state in #{speed} months.\n\n"
  end
  
end
=begin
DEFINE class called NationalReport
DEFINE a method called initialize which takes on argument
    INITIALIZE a new instance of virus predictor for the string
DEFINE a method called print_states which takes one argument which is a string (the state name)
  ITERATE through the keys of the STATE_DATA hash

  CALL virus effects method on new instance of the class
    
=end
class NationalReport
  def initialize(state_data)
    @state_data = state_data  # If this is the raw data it'll be fine. This is a hash right?  
  end
  
  def print_report
    @state_data.each_key do |state|
    current_state = VirusPredictor.new(state, @state_data[state][:population_density], @state_data[state][:population])
      current_state.virus_effects
    end
  end
end

report = NationalReport.new(STATE_DATA)
report.print_report
#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
# STATE_DATA.each { |state| }

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