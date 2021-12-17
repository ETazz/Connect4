#items = []
#yes = true
#no = false 


prompt = "> "

puts "
░█████╗░███████╗███████╗░█████╗░██████╗░░█████╗░
██╔══██╗╚════██║╚════██║██╔══██╗██╔══██╗██╔══██╗
███████║░░███╔═╝░░███╔═╝███████║██████╔╝███████║
██╔══██║██╔══╝░░██╔══╝░░██╔══██║██╔══██╗██╔══██║
██║░░██║███████╗███████╗██║░░██║██║░░██║██║░░██║
╚═╝░░╚═╝╚══════╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚═╝" + "\n"

puts ["\n", "Welcome to the adventures of Azzara!!", "\n", "-play", "-settings", "-exit","\n"]

begin 
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


while user_input = gets.chomp 
    case user_input
when 'play' 
    require_relative 'game.rb'
when 'settings'
    puts ['work in progress', "\n", '-play', '-exit'] 
when 'exit'
    exit
end
end

rescue 
    puts "error occured"
end

