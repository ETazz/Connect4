@user = ''

require "tty-prompt"

prompt = TTY::Prompt.new

@yesno = "yes", "no" 

def clear 
    system('clear')
end

clear 

begin

#ask user for their name

@user = prompt.ask("what is your name?")

puts ["\n" + "You suddenly wake to a familiar face.." + "\n" + "mum: Good Morning there #{@user.chomp}! Your father is in the training yards, go meet him!"]

while answer = prompt.select("\n" + "leave house?", [@yesno])
if answer == "yes"
    puts "\n" + "left house.."
    break
elsif answer == "no"
    puts "\n" + "stay in room bored"
end
end

clear

puts "\n" + "#{@user.chomp}: good morning father"

while answer = prompt.select("\n" + "father: hello there #{@user.chomp}, care to join me in some sparing before your big adventure!", [@yesno])
    if answer == "yes"
        puts "\n" + "sometime later..."
        break
    elsif answer == "no"
        puts "\n" + "father: you better train up for your adventure!", "\n" + "join me in some sparing before your big adventure"
    end
end


puts ["\n" + "father: Well #{@user}, your time has come, i am proud of you and how far you have come!", "Time for your journey to start!"]

while answer = prompt.select("\n" + "begin?", [@yesno])
    if answer == "yes"
        puts "\n" + "The first step is through mushy roads! But before you leave, take this bag and sword! You don’t know what is out there! And remember, the stories are true! This is not going to be easy, there will be a lot of challenges and courses to overcome"
        break
    elsif answer == "no"
        puts "\n" + "father: what are you waiting for!"
    end
end



# next code here!!!



# Error handling
rescue 
    StandardError
    puts "error had occured"
end
