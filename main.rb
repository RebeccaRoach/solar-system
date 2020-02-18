require_relative 'planet'

def main
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mercury = Planet.new('Mercury', 'red', 5.972e24, 1.496e8, 'It is the smallest planet?')

  def summary
    return "For the #{@color} planet #{@name}, it has a mass of #{@mass_kg} kgs."
  end

  puts earth.summary
  puts mercury.summary
end

main.summary