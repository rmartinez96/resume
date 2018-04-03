require 'sinatra'


get '/' do

	erb :index
	
end

get '/portfolio' do

	erb :portfolio
	
end
