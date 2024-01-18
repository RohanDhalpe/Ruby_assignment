
#array of the words to selected for the game
hangman_words = ['ruby', 'python', 'coding', 'array', 'function', 'server', 'network', 'frontend', 'backend', 'routing',
                 'template', 'middleware', 'library', 'algorithm', 'efficiency', 'iteration', 'agile', 'debug', 'script',
                 'object', 'class', 'array', 'loop', 'computer', 'server', 'framework', 'version', 'testing', 'deploy', 'secure']


selected_word=hangman_words.sample.chars  #to select word and convert it into character array

 p selected_word

chances=5  #worng guess can be made


len=selected_word.length # length of the selected
p len

guess=0  # to track if all the characters are guessed right

guessed_word=Array.new  # array to uppend the guessed word
for i in 0...len do
    guessed_word.push ('_')
end

# p guessed_word

# to check if the chances are over or if the guess is done
while chances>0 and len!=guess

    gussed=false #to track if the letter is guessed correct
    p "guess a letter"
    gussed_char = gets.chomp

    #to loop through the whole word
    for i in 0...len
        if(selected_word.at(i) == gussed_char)
            gussed=true
            guessed_word[i] = gussed_char
            selected_word[i] = nil
            break
        end
    end

    p guessed_word.join(" ")
    if(gussed == true)  #to increase guess or to decrease the chances if guessed correctly or wrong
        guess+=1
    else
        chances-=1
    end

    #final result
    if guess == len
        print "Congratulation you guessed the word right. Your guessed word is: "
        p guessed_word.join
        break
    end
    if chances == 0
        print "Sorry, you failed try again. Your Guessed word is: "
        p guessed_word.join(" ")
        break
    end

    p "you still have #{chances} chances left"

end

