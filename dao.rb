require 'make_todo'
require 'json'
require_relative "model"


def list_all
	json_list = Tarea.all
	result = list_parse(json_list, nil)
	return result
end

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


def create(title)
	Tarea.create(title)
end


def update(id)
	Tarea.update(id)
end

def remove(id)
	Tarea.destroy(id)
end


def list_parse(json_list, filter_done)
	result = Array.new
	json_list.each do |data|
		if data["done"]==filter_done || filter_done==nil 
			result.push(obj_parse(data))
		end
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

