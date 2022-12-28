class ProjectsController < ApplicationController

	def index
    @projects = Project.where(user:current_user)
	end

end
