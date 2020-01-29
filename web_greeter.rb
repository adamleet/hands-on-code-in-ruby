require 'sinatra'

get '/:name' do
   name = params[:name]
   "Hello #{name}, do you know that you name has #{name.length} in it and written backward is '#{name.reverse.downcase.capitalize}'"
end