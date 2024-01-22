# imf_loan_status.rb
module IMFLoan
  def check_for_loan(country, gdp, population)
    if gdp <= 2000 && population >= 1000000
      puts "#{country} will get a loan from the IMF."
    else
      puts "#{country} will not get a loan from the IMF."
    end
  end
end
