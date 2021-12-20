require "tty-prompt"
prompt = TTY::Prompt.new 

    # puts "
    # ░█████╗░███████╗███████╗░█████╗░██████╗░░█████╗░
    # ██╔══██╗╚════██║╚════██║██╔══██╗██╔══██╗██╔══██╗
    # ███████║░░███╔═╝░░███╔═╝███████║██████╔╝███████║
    # ██╔══██║██╔══╝░░██╔══╝░░██╔══██║██╔══██╗██╔══██║
    # ██║░░██║███████╗███████╗██║░░██║██║░░██║██║░░██║
    # ╚═╝░░╚═╝╚══════╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝╚═╝░░╚═╝" + "\n"
    
class Interface

        def intailise 
            @prompt =TTY::prompt.new
        end
 
        def welcome
        answer = prompt.select("what do you want to do?", %w(-play -settings -exit))
        binding.pry
        if answer == "-play"
            require_relative 'game.rb'
        elsif answer == "-settings"
            puts "work in progress"
            puts welcome
        elsif answer == "-exit"
            self.exit
        end
    end
end