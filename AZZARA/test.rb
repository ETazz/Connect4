
if !play
    puts "what is your name?"
name = gets 
end


puts ["You suddenly wake to a familiar face..
    ", "mum: Good Morning there #{name.chomp}!
    ", "Your father is in the training yards, go meet him!
    "]


puts ["leave house?", "-yes", "-no"]
print prompt


while user_input = gets.chomp 
    case user_input
when "yes"
    puts "left house.."
    break
when "no"
    puts ["stay in room bored..", "leave house?", "-yes", "-no"] 
    print prompt
end
end


puts "#{name.chomp}: good morning father"

puts ["father: hello there #{name.chomp}, care to join me in some sparing before your big adventure!", "-yes", "-no"]
print prompt
while user_input = gets.chomp 
    case user_input
when "yes"
    puts "sometime later..."
    break
when "no"
    puts ["father: you better train up for your adventure!", "join me in some sparing before your big adventure", "-yes", "-no"]
    print prompt
end
end

#code that could return error

# `if ARGV.length > 0 
#     flag, *rest = ARGV
#     ARGV.clear
#     case flag
#     when '-settings'
#         puts ['work in progress. other options', '-play', '-exit'] 
#     when '-exit'
#         exit
#     end
# end