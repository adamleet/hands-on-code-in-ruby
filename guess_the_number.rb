num = rand(1..100)
puts "I'm thinking of a number between 1 and 100, try and guess it"
guess = gets.to_i
attempt = 1

until guess == num do
    if guess < num then puts "The number is too small, try again"
    elsif guess > num then puts "The number is too high, try again"
    end
    attempt += 1
    guess = gets.to_i
end

puts "Well done, you got the number correctly at #{attempt} attempt#{'s' if attempt > 1}!"


