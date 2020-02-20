require_relative 'planet'
require_relative 'solar-system'

# Wave 1
# def main
#   earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
#   mercury = Planet.new('Mercury', 'red', 5.972e24, 1.496e8, 'It is the smallest planet?')

#   puts earth.summary
#   puts mercury.summary
# end

# main

# Wave 2
# def main
#   solar_system = SolarSystem.new('Sol')

#   mercury = Planet.new('Mercury', 'red', 0.330e24, 57e6, 'Mercury is the smallest planet in our Solar System.')
#   venus = Planet.new('Venus', 'yellow', 4.87e24, 108e6, 'Venus is the hottest planet in the Solar System.')
#   earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
#   mars = Planet.new('Mars', 'red', 6.42e23, 249e6, 'Both of Mars’ poles are blanketed in ice.')
#   jupiter = Planet.new('Jupiter', 'blue-red', 1.898e27, 817e6, 'Jupiter is the largest planet in our Solar System.')
#   saturn = Planet.new('Saturn', 'pink', 5.69e26, 1.5e9, 'Saturn’s rings are made primarily of “water ice” mixed with dust and other chemicals.')
#   uranus = Planet.new('Uranus', 'blue', 8.68e25, 3e9, 'Uranus is the coldest of the planets.')
#   neptune = Planet.new('Neptune', 'dark blue', 1.02e26, 4.5e9, 'Neptune’s blue color is due to the absorption of red light by methane in the atmosphere.')

#   solar_system.add_planet(mercury)
#   solar_system.add_planet(venus)
#   solar_system.add_planet(earth)
#   solar_system.add_planet(mars)
#   solar_system.add_planet(jupiter)
#   solar_system.add_planet(saturn)
#   solar_system.add_planet(uranus)
#   solar_system.add_planet(neptune)

#   list = solar_system.list_planets
#   puts list

#   found_planet = solar_system.find_planet_by_name('Venus')
#   puts found_planet
#   puts found_planet.summary

#   puts solar_system.distance_between("Mercury", "Venus")

# end

# main

# Wave 3
def details(solar_system)
  puts "What planet would you like to see details about?"
  planet_choice = gets.chomp.capitalize
  found_planet = solar_system.find_planet_by_name(planet_choice)
  puts solar_system.summarize_planet_details(planet_choice)
end

def user_adds_planet(solar_system)
  puts "Enter the name of the planet you'd like to add."
  user_planet_name = gets.chomp.capitalize
  # Check to see if planet is already in the solar system
  while solar_system.find_planet_by_name(user_planet_name)
    puts "Sorry, that planet is already in the solar system."
    puts "Enter the name of the planet you'd like to add."
    user_planet_name = gets.chomp.capitalize
  end
  puts "Enter the color of your planet."
  user_color = gets.chomp.downcase
  puts "What is the mass of your planet in kg?"
  user_mass = gets.chomp.to_f
  puts "How far is your planet from the sun in km?"
  user_distance = gets.chomp.to_f
  puts "What is one fun fact about your planet?"
  user_fact = gets.chomp
  user_planet = Planet.new(user_planet_name, user_color, user_mass, user_distance, user_fact)
  solar_system.add_planet(user_planet)
  puts solar_system.list_planets
end

def main
  solar_system = SolarSystem.new('Milky Way')

  mercury = Planet.new('Mercury', 'red', 0.330e24, 57e6, 'Mercury is the smallest planet in our Solar System.')
  venus = Planet.new('Venus', 'yellow', 4.87e24, 108e6, 'Venus is the hottest planet in the Solar System.')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'It is the only planet known to support life.')
  mars = Planet.new('Mars', 'red', 6.42e23, 249e6, 'Both of Mars’ poles are blanketed in ice.')
  jupiter = Planet.new('Jupiter', 'blue-red', 1.898e27, 817e6, 'Jupiter is the largest planet in our Solar System.')
  saturn = Planet.new('Saturn', 'pink', 5.69e26, 1.5e9, 'Saturn’s rings are made primarily of “water ice” mixed with dust and other chemicals.')
  uranus = Planet.new('Uranus', 'blue', 8.68e25, 3e9, 'Uranus is the coldest of the planets.')
  neptune = Planet.new('Neptune', 'dark blue', 1.02e26, 4.5e9, 'Neptune’s blue color is due to the absorption of red light by methane in the atmosphere.')

  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)
  solar_system.add_planet(saturn)
  solar_system.add_planet(uranus)
  solar_system.add_planet(neptune)

  i = -1
  while i < 0
    puts "What would you like to do? (list planets, planet details, add planet, or exit)"
    answer = gets.chomp.downcase
    if answer == "list planets"
      puts solar_system.list_planets
    elsif answer == "planet details"
      puts details(solar_system)
    elsif answer == "add planet"
      user_adds_planet(solar_system)
    elsif answer == "exit"
      i = 1
    end
  end
end

main
