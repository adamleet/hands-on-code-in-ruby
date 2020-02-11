require 'sinatra'
enable :sessions

get '/guess' do
    session[:number] = rand(1..100)
    session[:attempts] = 0
    @message = "I'm thinking of a number between 1 to 100 can you guess it"
    erb :guess
end

post '/guess' do
    number = session[:number]
    guess = params[:number]
    session[:attempts] += 1
    redirect to('/success') if guess == number 
        if guess < number then @message = "Your guess is too low, try again"
        elsif guess > number then @message = "Your guess is too high, try again"
        end
        erb :guess
end

get '/success' do
    # attempts = session[:attempts].to_i
    "Well done, you guessed the number at #{attempts} attempt#{'s' if attempts > 1}"
end

__END__

@@guess
<!DOCTYPE html>
<html>
<head>
<title> guess the title </title>
</head>
<body>
<p><%= @message %></p>

<form method="POST" action="/guess">
<input type="text" name="number">
<input type="submit" value="Guess">

</form>
</body>
</html>