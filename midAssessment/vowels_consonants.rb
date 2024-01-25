# Create a program to count the number of vowels and consonants in a given string.
def count_vowels_and_consonants(input_string)
  input_string = input_string.downcase
  vowels = 'aeiou'
  consonants = 'bcdfghjklmnpqrstvwxyz'

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

# Example:
input_string = 'Hello World!'
vowel_count, consonant_count = count_vowels_and_consonants(input_string)

puts "Number of vowels: #{vowel_count}"
puts "Number of consonants: #{consonant_count}"

# Alternative method

def count_vowels_and_consonants(input_string)
  input_string = input_string.downcase

  vowel_count = input_string.count('aeiou')
  consonant_count = input_string.count('bcdfghjklmnpqrstvwxyz')

  [vowel_count, consonant_count]
end

# Example:
input_string = 'Hello World!'
vowel_count, consonant_count = count_vowels_and_consonants(input_string)

puts "Number of vowels: #{vowel_count}"
puts "Number of consonants: #{consonant_count}"

