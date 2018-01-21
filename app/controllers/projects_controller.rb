class ProjectsController < ApplicationController
	def index
		@projects = Project.all
		@todo = Todo.new
	end
	def create

	end
	def update

	end
end
