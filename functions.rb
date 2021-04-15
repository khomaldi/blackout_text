# this method outputs text to the terminal, simulating human input
def print_text(text)
  system 'clear'

  array = text.chars

  array.each_with_index {
    |char, index|

    print(char)

    case char
    when '.', '?', '!'
      sleep rand(0.05..0.2)
    else
      sleep rand(0.01..0.2)
    end
  }
end

# this method replaces all characters in the text with the character █
def blackout_text(text)
  array = text.chars

  array.each_with_index {
    |char, index|

    system 'clear'

    if (char != "\n") 
      array[index] = '█'
    end

    print array.join

    sleep 0.02
  }
end

# this method displays the input cursor
def show_cursor()
  system 'tput cnorm'
end

# this method hides the inpit cursor
def hide_cursor()
  system 'tput civis'
end