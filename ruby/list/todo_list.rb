class TodoList

	def initialize(list)
	    @list = list
	  	@list
	end

	def get_items
		@list
	end

	def add_item(item)
		@list << item
		@list
	end

	def delete_item(item)
		@list.delete(item)
		@list
	end

	def get_item(index)
		@list.fetch(index)
	end

end

p @list = TodoList.new(["do the dishes", "mow the lawn"])
p @list.get_items
p @list.add_item("mop")
p @list.delete_item("do the dishes")
p @list.get_item(0)