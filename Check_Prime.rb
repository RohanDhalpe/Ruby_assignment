puts "Enter a number: "
num = gets.chomp.to_i
if num <= 1
  puts "#{num} is not prime"
else
  for i in 2..num
    if num % i == 0
      puts "#{num} is not prime"
      exit
    end
  end
  puts "#{num} is prime"
end
