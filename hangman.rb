# Array of words to select for the game
hangman_words = ['ruby', 'python', 'coding', 'array', 'function', 'server', 'network', 'frontend', 'backend', 'routing',
                 'template', 'middleware', 'library', 'algorithm', 'efficiency', 'iteration', 'agile', 'debug', 'script',
                 'object', 'class', 'array', 'loop', 'computer', 'server', 'framework', 'version', 'testing', 'deploy', 'secure']

# Select a random word and convert it into a character array
selected_word = hangman_words.sample.chars

# Display the selected word (for debugging purposes)
p selected_word

chances = 5  # Number of wrong guesses allowed

len = selected_word.length  # Length of the selected word
p len

guess = 0  # To track if all the characters are guessed correctly

# Initialize an array to store the guessed word
guessed_word = Array.new(len, '_')

# Main game loop to check if the chances are over or if the guess is correct
while chances > 0 && guess != len
  guessed = false  # To track if the letter is guessed correctly
  puts "Guess a letter:"
  guessed_char = gets.chomp

  # Loop through the whole word
  (0...len).each do |i|
    if selected_word[i] == guessed_char
      guessed = true
      guessed_word[i] = guessed_char
      selected_word[i] = nil
      break
    end
  end

  puts guessed_word.join(" ")

  if guessed  # Increase guess or decrease chances based on correct or incorrect guess
    guess += 1
  else
    chances -= 1
  end

  # Final result
  if guess == len
    puts "Congratulations! You guessed the word right. Your guessed word is: #{guessed_word.join}"
    break
  end

  if chances == 0
    puts "Sorry, you failed. Try again. Your guessed word is: #{guessed_word.join}"
    break
  end

  puts "You still have #{chances} chances left"
end

