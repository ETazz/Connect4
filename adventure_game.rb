#items = []
#yes = true
#no = false 



# while user_input = gets.chomp 
#     case user_input
# when '-play'
#     puts "Over the course of your life you have been told stories of a mystical island in the far distant lands.. This place is everything you imagined.. Quiet literally. Anything you think of appears right in front of you! This beauty is called Azzara. Beautiful isn’t it! Some people in the town you have grown up in don't know wrong from right and believe this mystical island is too good to be true. Well is it? Let’s find out! Time to go on an adventure to Azzara."
# when '-settings'
#     puts ['work in progress', '-play', '-exit'] 

# when '-exit'
#     exit
# end
# end

space = "\n"
prompt = "> "


puts ["Welcome to the adventures of Azzara!!", "-play", "-settings", "-exit"]

if ARGV.length > 0 
    flag, *rest = ARGV
    ARGV.clear
    case flag
    when '-play'
        play = rest [0]
    when '-settings'
        puts ['work in progress', '-play', '-exit'] 

    when '-exit'
        exit
    end
end

puts "Over the course of your life you have been told stories of a mystical island in the far distant lands.. This place is everything you imagined.. Quiet literally. Anything you think of appears right in front of you! This beauty is called Azzara. Beautiful isn’t it! Some people in the town you have grown up in don't know wrong from right and believe this mystical island is too good to be true. Well is it? Let’s find out! Time to go on an adventure to Azzara."

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

