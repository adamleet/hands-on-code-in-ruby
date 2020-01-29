require 'sinatra'

get '/madlibs' do
    erb :questions
end

post '/madlibs' do
    animal = params[:animal]
    color = params[:color]
    person = params[:person]
    object = params[:object]
    adjective = params[:adjective]
    verb = params[:verb]
    "The #{adjective} #{animal} started to #{verb} when the #{person} ran away with the #{color} #{object}"
end

__END__

@@questions
<!DOCTYPE html>
<head>
<title> Madlibs </title>
<style>
p {
    font-family: Helvetica;
    font-weight: bold;
}
input{
    border: 1px solid grey;
}
</style>
</head>
<body>
<h1> Enter the following parameters to generate a Madlibs</h1>
<form method="POST" action="madlibs">
<p> Animal: </p>
<input name="animal">
<p> Color: </p>
<input name="color">
<p> Person: </p>
<input name="person">
<p> Object: <p>
<input name="object">
<p> Adjective: </p>
<input name="adjective">
<p> Verb: </p>
<input name="verb"><br/>
<p><input type="submit" value="Create madlibs"></p>
</form>
</body>
</html>


