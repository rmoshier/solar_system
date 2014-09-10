class SolarSystem # x create a planet class with a name attribute
  attr_accessor :planets, :formation_date
  def initialize
    @planets = []
    @formation_date = 4500000000
    #@@ is a class attribute, so now this is an attribute for the whole class
  end

  #Define a method that returns the local year of the planet based on it's
  #rotation since the beginning of the solar system

  #questions:
  #is my math right?
  #is local_year method in the right place?
  #is formation_date in the right place?

end

class Planets #create a SolarSystem class that has an attribute "planets"
                  #that has 0-? Planets
                  #each element with the planets Array should be a Planet object
                  #get creative!
  attr_accessor :planets, :name, :distance, :color, :solar_rotation, :sun_distance, :distance_from_the_sun

  def initialize(planets)
    @name = planets[:name]
    @distance = planets[:distance]
    @color = planets[:color]
    @solar_rotation = planets[:solar_rotation]
    @distance_from_the_sun = planets[:distance_from_the_sun]
  end
end

planets = [
    {
      :name => "Mercury",
      :distance => 1,
      :color => "orange red",
      :solar_rotation => 88
      # mercury rotates around the fun once for every 88 earth year.
      },
    {
      :name => "Venus",
      :distance => 2,
      :color => "orange",
      :solar_rotation => 224.7
      # venus rotates around the sun once for every 224.7 earth years.
    },
    {
      :name => "Earth",
      :distance => 3,
      :color => "blue",
      :solar_rotation => 1
      }
]

def local_year(planet)
  my_test = SolarSystem.new
  my_test.formation_date/planet[:solar_rotation].to_i
end

planets.each do |hash|
  my_test = SolarSystem.new
  my_test.planets.push(Planets.new(hash))
  # puts (local_year(hash))
end

#Write a program that asks for user input to query the planets
#Which planet would you like? (list planets)
#What would you like to know about the planet?
#(give options, diameter, mass, number of moons)

#Give each planets a @distance_from_the_sun attribute,
#and a method to determine the distance from any other planet
#(assuming planets are in a straight line from the sun)

puts "Welcome to space!"
puts "What planet do you want to learn about? Mercury, Venus or Earth?"
a = gets.chomp
puts "What would you like to know about #{a}? distance or color?"
b = gets.chomp.to_sym
  if
    a == "Mercury" || a == "mercury"
    puts planets[0][b]
  elsif
    a == "Venus" || a == "venus"
    puts planets[1][b]
  elsif
    a == "Earth" || a == "earth"
    puts planets[2][b]
  end

#add .inspect to show the attributes that are stored in the array!
# puts my_test.planets.inspect

# planets.each do |hash|
#   planets = Planets.new(hash)
#   puts planets.name
#   puts planets.distance
#   puts planets.color
#   puts "-" * 10
# end
