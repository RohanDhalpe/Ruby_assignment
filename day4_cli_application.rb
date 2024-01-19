=begin
A CLI application for handling data from as many countries as we can. Example of what data we can have:

1] Population
2] GDP(Gross Domestic Production)
3] States
4] Army Strength
5] State of the country (developing, developed) Etc.

On the basis of all these data, we will be building modules to conceive various outputs like:

a] Whether that country will get a loan from the IMF (International Monetary Fund) or WB (World Bank).
b] Whether the country can have a seat in the UN (United Nations) Security Council.
c] Whether the country can win the war or not
=end

# Module for loan status
module IMFLoanStatus
  module_function

  def check_for_loan(country, gdp, population)
    if gdp <= 2000 && population >= 1000000
      puts "#{country} will get a loan from the IMF."
    else
      puts "#{country} will not get a loan from the IMF."
    end
  end
end

# Module for UN Security Council status
module UNSecurityCouncilStatus
  module_function

  def permission_to_seat(country, gdp, army_strength)
    if gdp >= 5000 && army_strength >= 50000
      puts "#{country} can have a sufficient seat in the UN Security Council."
    elsif gdp >= 3000 && gdp <= 5000 && army_strength >= 45000
      puts "#{country} can have a limited seat in the UN Security Council."
    elsif gdp >= 2000 && gdp < 3000 && army_strength >= 40000
      puts "#{country} can have a conditional seat in the UN Security Council."
    else
      puts "#{country} does not meet the conditions for a seat in the UN Security Council."
    end
  end
end

# Module for country development status
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

# Module for war capability status
module WarCapabilityStatus
  module_function

  def assess_capability(country, army_strength)
    if army_strength >= 45000
      puts "#{country} can win the war with an army capacity of #{army_strength}."
    elsif army_strength >= 40000
      puts "#{country} has a good chance of winning the war with an army capacity of #{army_strength}."
    else
      puts "#{country} needs more army to win the war."
    end
  end
end

# Class that holds all modules
class CountryAnalysis
  include IMFLoanStatus
  include UNSecurityCouncilStatus
  include CountryDevelopmentStatus
  include WarCapabilityStatus

  attr_accessor :country, :gdp, :population, :army_strength

  def initialize(country, gdp, population, army_strength)
    @country = country
    @gdp = gdp
    @population = population
    @army_strength = army_strength
  end

  def analyze_country
    check_for_loan(country, gdp, population)
    permission_to_seat(country, gdp, army_strength)
    check_state(gdp, population, country)
    assess_capability(country, army_strength)
  end
end

# Random sample data
sample_country_analysis = CountryAnalysis.new("INDIA", 3500, 1200000, 48000)
sample_country_analysis.analyze_country
print("\n")
sample_country_analysis = CountryAnalysis.new("CHINA", 2000, 1800000, 50000)
sample_country_analysis.analyze_country
print("\n")
sample_country_analysis = CountryAnalysis.new("UK", 1950, 100000, 35000)
sample_country_analysis.analyze_country

