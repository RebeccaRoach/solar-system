require_relative 'planet'
require_relative 'solar-system'

# Wave 1
def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mercury = Planet.new('Mercury', 'red', 5.972e24, 1.496e8, 'It is the smallest planet?')

  puts earth.summary
  puts mercury.summary
end

main


# # Wave 2
# def main
#   solar_system = SolarSystem.new('Sol')

#   earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
#   mercury = Planet.new('Mercury', 'red', 5.972e24, 1.496e8, 'It is the smallest planet?')

#   solar_system.add_planet(earth)
#   solar_system.add_planet(mercury)

#   def summary
#     return "For the #{@color} planet #{@name}, it has a mass of #{@mass_kg} kgs."
#   end

#   list = solar_system.list_planets
#   puts list
#   # => Planets orbiting Sol
#   # => 1.  Earth
# end

# main

