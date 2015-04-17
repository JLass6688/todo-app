require 'bundler'
Bundler.require();



#=======================Connection
ActiveRecord::Base.establish_connection(
	:adapter => 'postgresql',
	:database => 'all_the_todos'
)



#=======================Models
require './models/todo'



#=======================Routes

get '/' do
	erb :index
end

get '/api/todos' do  

	content_type :json
	Todo.all.to_json

end

get '/api/todo/:id' do  

	content_type :json
	id = params[:id].to_i
	todo = Todo.find(id)
	todo.to_json

end

post '/api/todos' do  

	content_type :json
	todo = Todo.create(params[:todo])
	todo.to_json

end

patch '/api/todos/:id' do  

	content_type :json
	id = params[:id].to_i
	todo = Todo.find(id)
	todo.update(params[:todo])
	todo.to_json

end

put '/api/todos/:id' do  

	content_type :json
	id = params[:id].to_i
	todo = Todo.find(id)
	todo.update(params[:todo])
	todo.to_json

end

delete '/api/todos/:id' do  

	content_type :json
	id = params[:id].to_i
	Todo.delete(id)
	{message: 'Success!'}.to_json

end









