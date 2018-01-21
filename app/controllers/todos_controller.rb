class TodosController < ApplicationController
	def index

	end
	def create
		@todo = Todo.new(params.require(:todo).permit([:text, :project_id]))
		if @todo.save
			redirect_to projects_path
		end
	end
	def update

	end
end
