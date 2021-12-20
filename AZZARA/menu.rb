require "tty-prompt"

prompt = TTY::Prompt.new 

puts "
░█████╗░███████╗███████╗░█████╗░██████╗░░█████╗░
██╔══██╗╚════██║╚════██║██╔══██╗██╔══██╗██╔══██╗
███████║░░███╔═╝░░███╔═╝███████║██████╔╝███████║
██╔══██║██╔══╝░░██╔══╝░░██╔══██║██╔══██╗██╔══██║
██║░░██║███████╗███████╗██║░░██║██║░░██║██║░░██║
╚═╝░░╚═╝╚══════╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚═╝" + "\n"

puts ["\n" + "Welcome to the adventures of Azzara!!" + "\n", "-play", "-settings", "-exit" + "\n"]

answer = prompt.select


    begin
        
while user_input = gets.chomp 
    case user_input
when 'play' 
    require_relative 'game.rb'
when 'settings'
    puts ['work in progress' + "\n", '-play', '-settings', '-exit',] 
when 'exit'
    exit
else
    puts ["invalid answer" + "\n", "-play", '-settings', "-exit"]
end

end

rescue
    standardError
    puts "error has occured"
end