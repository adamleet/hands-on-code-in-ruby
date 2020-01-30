num = rand(1..6)

puts "You got #{num}"

puts "You got the highest number possible" if num == 6

puts "You didn't get the lowest number" if num != 1

if num < 5 then puts "You got a number that is less than five" end

if num.even?
    puts "You got an even number"
else
    puts "You got an odd number"
end

if num == 1 then puts "You got number one"
elsif num == 2 then puts "You got number two"
elsif num  == 3 then  puts "You got number three"
else puts "You got a number greater than three"
end

case num
    when 4 then puts  "You got number four"
    when 5 then puts  "You got number five"
    when 6 then puts  "You got number six"
    else puts "You got a number less than 4"
end

if num == 2 || num == 3 || num == 5
    puts "You got a prime number"
end

if num.odd? && num >= 4
    puts "You got number five"
end

if num.even? && num <= 3
    puts "You rolled an even prime number"
end
