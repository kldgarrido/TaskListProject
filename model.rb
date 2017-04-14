
class Task

	include Comparable
	
	attr_accessor :id, :title, :done, :created_at, :updated_at

	def initialize(id, title, done, created_at, updated_at)
		@id = id
		@title = title
		@done = done
		@created_at = created_at
		@updated_at = updated_at
	end

	def <=>(anOther)
    	@id <=> anOther.id
		@title <=> anOther.title
		@done <=> anOther.done
		@created_at <=> anOther.created_at
		@updated_at <=> anOther.updated_at
  	end

end