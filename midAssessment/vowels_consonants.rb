def count_vowels_and_consonants(input_string)
  vowels = 'aeiouAEIOU'
  consonants = 'bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ'

  vowel_count = 0
  consonant_count = 0

  input_string.each_char do |char|
    if vowels.include?(char)
      vowel_count += 1
    elsif consonants.include?(char)
      consonant_count += 1
    end
  end

  [vowel_count, consonant_count] # function returns counts of vowel and consonant
end

# Example :
input_string = "Hello World!"
vowel_count, consonant_count = count_vowels_and_consonants(input_string)

puts "Number of vowels: #{vowel_count}"
puts "Number of consonants: #{consonant_count}"
