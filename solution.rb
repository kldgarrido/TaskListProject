require 'sinatra'
require 'make_todo'
require_relative 'dao'

get '/' do
	erb :index, :locals => {:tasks => list_all}
end

get '/view_all' do
	erb :index, :locals => {:tasks => list_all}
end

get '/view_incomplete' do
	erb :index, :locals => {:tasks => list_incomplete}
end

get '/view_complete' do
	erb :index, :locals => {:tasks => list_complete}
end

get '/create' do
	title = params[:'title']
	create(title)
	erb :index, :locals => {:tasks => list_all}
end

get '/update' do
	id = params[:'id']
	update(id)
	erb :index, :locals => {:tasks => list_all}
end

get '/remove' do
	id = params[:'id']
	remove(id)
	erb :index, :locals => {:tasks => list_all}
end
