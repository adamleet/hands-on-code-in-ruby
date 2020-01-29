puts "Please enter your name:"
name = gets.chomp
puts "Hello #{name}, do you know that your name has #{name.length} letters in it and when written backwards it is '#{name.reverse.downcase.capitalize}'?"