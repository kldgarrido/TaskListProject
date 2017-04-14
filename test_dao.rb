require_relative 'dao'
require_relative "model"
require "test/unit"

class Test_dao < Test::Unit::TestCase

	def test_obj_parse
		exp_result = Task.new(3914, "buy amazon kindle", false, "2017-04-14T21:37:49.548Z", "2017-04-14T21:37:49.548Z" )
		
		data = Hash.new
		data["id"]=3914
		data["title"]="buy amazon kindle"
		data["done"]=false
		data["created_at"]="2017-04-14T21:37:49.548Z"
		data["updated_at"]="2017-04-14T21:37:49.548Z"

		result = obj_parse(data)
		
		assert_equal(exp_result, result)
	end


	def test_list_parse	
		exp_result = Array.new
		exp_result.push(Task.new(3914, "buy amazon kindle", false, "2017-04-14T21:37:49.548Z", "2017-04-14T21:37:49.548Z"))
		exp_result.push(Task.new(3915, "eat pizza", false, "2017-04-14T22:43:23.222Z", "2017-04-14T22:43:23.222Z"))

		json_list = Array.new
		
		data1 = Hash.new
		data1["id"]=3914
		data1["title"]="buy amazon kindle"
		data1["done"]=false
		data1["created_at"]="2017-04-14T21:37:49.548Z"
		data1["updated_at"]="2017-04-14T21:37:49.548Z"
		json_list.push(data1)

		data2 = Hash.new
		data2["id"]=3915
		data2["title"]="eat pizza"
		data2["done"]=false
		data2["created_at"]="2017-04-14T22:43:23.222Z"
		data2["updated_at"]="2017-04-14T22:43:23.222Z"
		json_list.push(data2)
		
		result = list_parse(json_list, false)
		
		assert_not_same(result, exp_result) #Succeeds
		
	end





end