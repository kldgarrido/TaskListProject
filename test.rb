require "make_todo"


#Tarea.create("eat pizza")

Tarea.all.each do |item|
	puts item["id"]
end