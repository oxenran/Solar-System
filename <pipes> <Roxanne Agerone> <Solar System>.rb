#Create SolarSystem class with @planets instance variable
#create init. method which takes collection planet names and stores in instance variable
#create method to add planet to list
#create method which will return (not print a list of planets as  a string)

class SolarSystem
 #generate accessor methods for name, yearly_cycle, and daily_cycle
  attr_accessor :planets

  def initialize(*planets)
    @planets = planets
  end

  def new_planet(planet_hash)
    @planets<<(planet_hash)
    puts @planets
  end

  def planet_dictionary(planet)
    puts planet.attributes
  end

#I'm doing something here that is returning NoMethodError
#Broken Code!

  def find_planet(planet_name_string)
    attributes = ""
    @planets.each do |planet|
    until @name == planet_name_string
      attributes = "#{@name} has #{@year} days in its year, is #{@distance_sun} km \n from the sun, and has a diameter of #{@diameter}"
    end
    puts attributes
  end
  end #end of class
end

class Planet
  attr_accessor :name, :year, :distance_sun, :diameter

  #initialize method with arguments to set to class' instance variables
  def initialize(name, year, distance_sun, diameter)

    @name = name
    @year = year
    @distance_sun = distance_sun
    @diameter = diameter

  end

  def attributes
    #I would like to return the class instance variable as a string along with the value
      return "#{@name} has #{@year} days in its year, is #{@distance_sun} km \n from the sun, and has a diameter of #{@diameter}"
  end

  def name_equals(string)
  if @name == string
    return "something is returning"
  else
    return false
  end
  end

end #end Planet Class

def add_planet
  puts "Would you like to add a planet to the Solar System?"
  answer = gets.chomp
  if answer == "no"
    puts "Okay, enjoy the solar system."
  else
    puts "What's the planet's name?"
    new_planet_name = gets.chomp.capitalize
    puts "How many days in the planet's year?"
    new_planet_year = gets.chomp.to_i
    puts "What is the planet's distance from the sun?"
    new_planet_distance = gets.chomp.to_i
    puts "What is the diameter of the planet?"
    new_planet_diameter = gets.chomp.to_i

    maybe_pluto = Planet.new(new_planet_name, new_planet_year, new_planet_distance, new_planet_diameter)
   puts maybe_pluto.attributes
   #all_the_planets << maybe_pluto
   return maybe_pluto
  end
end #end add_planet
mercury = Planet.new("Mercury", 88, 57909227, 4879)

venus = Planet.new("Venus", 225, 108209475, 12104)

earth = Planet.new("Earth", 365.24, 149598262, 12742)

mars = Planet.new("Mars", (1.9 * 365.24), 227943824, 6779)

jupiter = Planet.new("Jupiter", (11.9 * 365.24), 778340821, 139822)

saturn = Planet.new("Saturn", (29.5 * 365.24), 1426666422, 116464)

uranus = Planet.new("Uranus", (84 * 365.24), 2870658186, 50724)

neptune = Planet.new("Neptune", (164.8 * 365.24), 4498396441, 49244)


all_the_planets = [mercury, venus, earth, mars, jupiter, saturn, uranus, neptune]


maybe_pluto = add_planet
all_the_planets << maybe_pluto



puts "and the universe is created..."
my_universe = SolarSystem.new(all_the_planets)
puts my_universe

puts "What planet would you like to learn about?"

question_user = gets.chomp.capitalize

my_universe.find_planet(question_user)

puts "I hope the answer is above"

my_universe.planet_dictionary
