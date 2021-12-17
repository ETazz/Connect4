
user_input = gets.chomp 
    until (user_input == 'yes')
        puts ["leave house?", "-yes", "-no"]
    end

if user_input == 'yes'
    puts "left house..."
elsif user_input == 'no'
    puts "stay in room bored"
end







