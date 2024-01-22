# Array of words for the game
hangman_words = ['ruby', 'python', 'coding', 'array', 'function', 'server', 'network', 'frontend', 'backend', 'routing',
                 'template', 'middleware', 'library', 'algorithm', 'efficiency', 'iteration', 'agile', 'debug', 'script',
                 'object', 'class', 'array', 'loop', 'computer', 'server', 'framework', 'version', 'testing', 'deploy', 'secure']

selected_word = hangman_words.sample.chars
p selected_word

chances = 5
len = selected_word.length
p len

guess = 0
guessed_word = Array.new(len, '_')

while chances > 0 && guess < len
  p "Guess a letter (#{chances} chances left):"
  guessed_char = gets.chomp

  guessed = false

  selected_word.each_with_index do |char, index|
    if char == guessed_char
      guessed = true
      guessed_word[index] = guessed_char
      selected_word[index] = nil
    end
  end

  p guessed_word.join(" ")

  if guessed
    guess += 1
  else
    chances -= 1
  end

  if guess == len
    print "Congratulations! You guessed the word right. Your guessed word is: "
    p guessed_word.join
    break
  end

  if chances == 0
    print "Sorry, you failed. Try again. Your Guessed word is: "
    p guessed_word.join(" ")
    break
  end
end

