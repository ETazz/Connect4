require "tty-prompt"

prompt = TTY::Prompt.new 

begin

puts "
░█████╗░███████╗███████╗░█████╗░██████╗░░█████╗░
██╔══██╗╚════██║╚════██║██╔══██╗██╔══██╗██╔══██╗
███████║░░███╔═╝░░███╔═╝███████║██████╔╝███████║
██╔══██║██╔══╝░░██╔══╝░░██╔══██║██╔══██╗██╔══██║
██║░░██║███████╗███████╗██║░░██║██║░░██║██║░░██║
╚═╝░░╚═╝╚══════╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚═╝" + "\n"

while answer = prompt.select("\n" + "Welcome to the adventures of Azzara!!", ["Play", "Settings", "Exit"])
if answer == "Play"
    require_relative 'game.rb'
elsif answer == "Settings"
    puts "\n" + "work in progress..."
elsif answer == 'Exit'
    exit
end
end

rescue
    standardError
    puts "error has occured"
end