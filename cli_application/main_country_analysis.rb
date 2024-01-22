# country_analysis.rb
require_relative 'imf_loan_status'
require_relative 'un_security_council_status'
require_relative 'country_development_status'
require_relative 'war_capability_status'

class CountryAnalysis
  include IMFLoanStatus
  include UNSecurityCouncilStatus
  include CountryDevelopmentStatus
  include WarCapabilityStatus

  attr_accessor :country, :gdp, :population, :army_strength

  def initialize(country, gdp, population, army_strength)
    @country = country
    @gdp = gdp.to_i
    @population = population.to_i
    @army_strength = army_strength.to_i
  end

  def analyze_country
    check_for_loan(country, gdp, population)
    permission_to_seat(country, gdp, army_strength)
    check_state(gdp, population, country)
    assess_capability(country, army_strength)
  end
end

# Check if all required command line arguments are provided
unless ARGV.length == 4
  puts "Usage: ruby main_country_analysis.rb <country> <gdp> <population> <army_strength>"
  exit(1)
end

# Extract command line arguments
country, gdp, population, army_strength = ARGV

# Create an instance of CountryAnalysis and analyze the country
sample_country_analysis = CountryAnalysis.new(country, gdp, population, army_strength)
sample_country_analysis.analyze_country
