require 'sinatra'
require_relative "./TodoManager.rb"

get '/todos' do
	TodoManager.index
end

post '/todos' do
	to_add=params[:todos]
	TodoManager.create to_add
end

get '/todos/:id' do
	id=params[:id].to_f
	TodoManager.show id
end

put '/todos/:id' do
	id=params[:id]
	"update #{id}"
end

delete '/todos/:id' do
	id=params[:id].to_f
	TodoManager.delete id
	# "destroy #{id}"
end
