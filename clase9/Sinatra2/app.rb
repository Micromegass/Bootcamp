
# require "faker"
require "sinatra"
require "bootstrap"
require "rubygems"

get '/' do
erb :home
end



get '/about' do
erb :about
end


get '/contact' do
  @name = params[:name]
erb :contact
end


#saving parameters names
get '/greet/:name' do
    @name = params[:name]
erb :greet
end

#calculating an area
get '/area' do
  @area = params[:num1].to_i * params[:num2].to_i
  erb :area
end

#redirecting to google
get '/google' do
 status 200
 headers "Content-Type" => "text/html"
 redirect "http://www.google.com"
end



#create a route PUT, DELETE and use curl, postman and HTTparty to call it
delete '/delete' do
  status 200
  body "deleting"
end

put '/put' do
  status 200
  body "putting"
end



get '/form' do
erb :form
end

post '/save' do
 @name=params[:name]
 erb :save
end


get '/inputs' do
  erb :inputs
end

post '/outputs' do
 @name=params[:name]
 @password=params[:password]
 @email=params[:email]
 erb :outputs
end
