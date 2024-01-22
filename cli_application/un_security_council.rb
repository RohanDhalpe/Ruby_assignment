module UNSecurityCouncil
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
