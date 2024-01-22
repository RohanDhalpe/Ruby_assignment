module CountryDevelopmentStatus
  module_function

  def check_state(gdp, population, country)
    gdp_per_capita = gdp / population
    if gdp_per_capita <= 0.4
      puts "#{country} is in a developing state."
    else
      puts "#{country} is in a developed state."
    end
  end
end
