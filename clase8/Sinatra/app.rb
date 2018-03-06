
require "sinatra"
require "faker"

get '/' do
  @name = Faker::StarTrek.character
  @cerveza = Faker::Beer.name
  erb :index
end
