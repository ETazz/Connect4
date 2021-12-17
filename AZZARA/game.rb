#items = []
#yes = true
#no = false 

sp = "\n"
prompt = "> "

puts "\n" + "what is your name?" + "\n"

name = gets 

puts ["\n" + "You suddenly wake to a familiar face.." + "\n" + "mum: Good Morning there #{name.chomp}! Your father is in the training yards, go meet him!"]

puts ["\n" + "leave house?", "-yes", "-no"]
print prompt

while user_input = gets.chomp 
    case user_input
when "yes"
    puts "\n" + "left house.."
    break
when "no"
    puts ["\n" + "stay in room bored..", "\n" + "leave house?", "-yes", "-no"] 
    print prompt
else 
    puts ["\n" + "invalid response", "can only use", "-yes", "-no"]
end
end

puts "\n" + "#{name.chomp}: good morning father"

puts ["\n" + "father: hello there #{name.chomp}, care to join me in some sparing before your big adventure!", "\n", "-yes", "-no"]
print prompt
while user_input = gets.chomp 
    case user_input
when "yes"
    puts "\n" + "sometime later..."
    break
when "no"
    puts ["\n" + "father: you better train up for your adventure!", "join me in some sparing before your big adventure", "\n", "-yes", "-no"]
    print prompt
end
end

puts ["\n" + "father: Well #{name.chomp}, your time has come, i am proud of you and how far you have come!", "Time for your journey to start", "--Begin?", "-yes", "-no"]
print prompt 
while user_input = gets.chomp 
    case user_input
when "yes"
    puts ["\n" + "The first step is through mushy roads! But before you leave, take this bag and sword! You don’t know what is out there! And remember, the stories are true! This is not going to be easy, there will be a lot of challenges and courses to overcome"]
    break
when "no"
    puts [ "\n" + "father: what are you waiting for!"]
else
    puts "invalid return"
end
end
