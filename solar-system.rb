class SolarSystem

  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets.push(planet)
  end

  def list_planets
    str_planets = "Planets orbiting #{@star_name}"
    @planets.each_with_index do |planet, index|
      str_planets += "\n #{index+1}. #{planet.name}"
    end
    return str_planets
  end

  def find_planet_by_name(named_planet)
    named_planet = named_planet.capitalize

    @planets.filter do |planet|
      if planet.name == named_planet
        return planet
      # else
      #   return "Sorry, that planet wasn't found."
      end
    end
  end

end