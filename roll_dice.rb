#TEXT-STYLE IMAGE draw
die_image = []
die_image.push("___________\n|         |\n|         |\n|    O    |\n|         |\n|         |\n-----------")
die_image.push("___________\n|       O |\n|         |\n|         |\n|         |\n| O       |\n-----------")
die_image.push("___________\n|       O |\n|         |\n|    O    |\n|         |\n| O       |\n-----------")
die_image.push("___________\n| O     O |\n|         |\n|         |\n|         |\n| O     O |\n-----------")
die_image.push("___________\n| O     O |\n|         |\n|    O    |\n|         |\n| O     O |\n-----------")
die_image.push("___________\n| O     O |\n|         |\n| O     O |\n|         |\n| O     O |\n-----------")

#-------------------------------------------------------------------------------------------------------------
puts die_image[4]
puts "DICE ROLLER\n\n"
puts "How many do you want to roll?"

while (input = gets.chomp) do
    if input.downcase =~ /quit|exit|bye|leave|q|e/
        puts "Bye bye! Please come again!"
        exit
    else
        puts "\n"
        total = 0
        input.to_i.times do
            value = 1 + rand(6)
            puts die_image[value-1]
            total += value
        end
        puts "\n\nTOTAL: #{total}"
    end
    puts "\n\n------------------------------------\nRoll how many?"
end