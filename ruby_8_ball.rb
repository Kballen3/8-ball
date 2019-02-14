require "pry"
require "colorize"

def menu 
    puts "Welcome to Magic 8 Ball".colorize(:blue)
    puts "type Quit to exit".colorize(:blue)
    puts "What question would you like to ask?".colorize(:blue)
    puts "1: Get answer".colorize(:green)
    puts "2: Quit".colorize(:red)
    print ">"
    gets.chomp
    case answer = gets.to_i 
    when 1 
        puts @random_answers.sample  
    
    when 2 
        puts exit 
    else 
        puts "try again"
        menu
    end
end

@random_answers = [
"yes",
"no",
"You will never know",
"ok",
"that is a dumb question",
"the answer is in the question"
]

menu
binding.pry
