require './functions.rb'

text = "
i hope you read quickly. i hope you're really interested…

this is my first experience with ruby.

the script simulates human input (simple algorithm).

then, when all the text is displayed, the script starts replacing the letters with the character █.

the hardest part was figuring out how not to replace the line break \\n. but then i got the idea to make an array out of text and operate on characters as array elements
"

# functions are from “functions.rb” file
print_text(text)

hide_cursor()

blackout_text(text)

show_cursor()
