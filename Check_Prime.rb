def is_prime?(num)
  return false if num <= 1

  (2..Math.sqrt(num).to_i).none? { |i| num % i == 0 }
end

puts "Enter a number: "
num = gets.chomp.to_i

if is_prime?(num)
  puts "#{num} is prime"
else
  puts "#{num} is not prime"
end

