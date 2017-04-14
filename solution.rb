require 'sinatra'
require 'make_todo'
require_relative 'dao'



get '/view_incomplete' do
	erb :tasks, :locals => {:tasks => list_incomplete}
end

get '/view_complete' do
	erb :tasks, :locals => {:tasks => list_complete}
end

get '/create' do
	Tarea.create("Titulo de la tarea")
end

get '/update' do
	Tarea.find(id)
	Tarea.update(id)
end

get '/destroy' do
	Tarea.destroy(id)

end
