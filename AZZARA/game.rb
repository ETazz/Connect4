@user = ''

inventory = []

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


puts ["\n" + "father: Well #{@user.chomp}, your time has come, i am proud of you and how far you have come!", "Time for your journey to start!"]

while answer = prompt.select("\n" + "begin?", [@yesno])
    if answer == "yes"
        puts "\n" + "The first step is through mushy roads! But before you leave, take this bag and sword! You don’t know what is out there! And remember, the stories are true! This is not going to be easy, there will be a lot of challenges and courses to overcome"
        inventory.append("sword", "bag")
        break
    elsif answer == "no"
        puts "\n" + "father: what are you waiting for!"
    end
end

puts "\n" + "father: Off you go #{@user.chomp}to the mystical lands of Azarra"

puts "\n" + "#{@user.chomp} Thanks dad! this is all so very exciting!! i can't wait what for what this adventure bring!"

puts "\n" + "left home..."

puts "\n" + "through the windy roads of Lexia you come apon the town of mushy roads and are gretted by a old lady"

while answer = prompt.select("\n" + "Hello there young blood, how would you like to help and old lady out! These darn kittens of mine are running loose again in my town. Could you please help and old lady out?", ["Help old lady", "Don't'help"])
if answer == "Help old lady"
    puts "\n" + "lets catch these kittens"
    puts "\n" + "Old Lady: Thankyou sir! here is a weird fragment thingo for you"
    inventory.apppend("key-fragment-1")
    break

    puts "\n" + "#{@user.chomp}: This key fragment seems to make a full key, i need more pieces before it can be used"
    if asnwer == "Don't help"
        puts "\n" + "Old Lady: Darn it you! These old bones aren't made for moving!"
        break
    end
end

puts "\n" + "continue with adventure"
end
puts "\n" + "#{@user.chomp}: Wow this town is amazing! i will have to come back here!"
end
puts "\n" + "when exiting the town you are greated by a strange man"
end
puts "\n" + "Hello there, which way are you going? *shaky voice* Left is into the windy woods. If you go there you will certainly be eaten by treacherous creatures.*shaky voice* Right is the great kneeless river! Also known as Fisherman's river. *shaky*"
end
puts "\n" + "#{@user.chomp}: Thanks for the tip! *walk away*. That mcan seems crazy! What does he know about anything! "
end
puts "\n" + "when arriving at the split way you try to remember what the crazy man said"
end
puts "\n" + "#{@user.chomp}: I swear that old man said left is bad and right is good. but they seem to be the other way around!! Right in the woods and left is Fisherman's river.. Argh which way!!"

while answer = promp.select("which way?", ["go right and believe the old man", "go left beacuase it looks right"])
    if answer = "go right and believe the old man"
        puts "\n" + "continue into the dark woods"

        break
    elsif answer = "go left beacuase it looks right"
        break 
    end
end

# next code here!!!



# Error handling
rescue 
    StandardError
    puts "error had occured"
end
