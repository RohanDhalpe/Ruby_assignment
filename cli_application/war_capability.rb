module WarCapability
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
