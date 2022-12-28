class ProjectsController < ApplicationController
	before_action :authenticate_user!

	def index
    	@projects = Project.where(user:current_user)
	end

	private

	def project_params
		params.require(:project).permit(:name, :price, :time_target, :status, :user_id)
	end

end
