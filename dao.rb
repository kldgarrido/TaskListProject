require 'make_todo'
require 'json'
require_relative "model"


def list_complete
	json_list = Tarea.all
	result = list_parse(json_list, true)
	return result
end


def list_incomplete
	json_list = Tarea.all
	result = list_parse(json_list, false)
	return result
end


def create
end


def update
end


def list_parse(json_list, filter_done)
	result = Array.new
	json_list.each do |data|
		result.push(obj_parse(data)) if data["done"]=filter_done
	end
	result
end


def obj_parse(data)
	id = data["id"]
	title = data["title"]
	done  = data["done"]
	created_at  = data["created_at"]
	updated_at  = data["updated_at"]
	Task.new(id, title, done, created_at, updated_at) 
end

