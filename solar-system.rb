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
    str_planets = "Planets orbiting #{@star_name}\n------------------"
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
      end
    end
    return false
  end

  def distance_between(planet_1, planet_2)
    planet_1_distance = find_planet_by_name(planet_1).distance_from_sun_km 
    planet_2_distance = find_planet_by_name(planet_2).distance_from_sun_km 
    difference = planet_1_distance - planet_2_distance
    return "The distance between #{planet_1} and #{planet_2} is #{difference.abs} km."
  end

  def summarize_planet_details(named_planet)
    found_planet = find_planet_by_name(named_planet)
    if found_planet.class == Planet
      return found_planet.summary
    else
      return "Sorry, no details available."
    end
  end

end