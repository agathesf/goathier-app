class ProjectsController < ApplicationController
	before_action :authenticate_user!

	def index
    	@projects = Project.where(user:current_user)
	end

	def show
		@project = Project.find(params[:id])
	end
	
	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)
		if @project.save
		  redirect_to project_path(@project)
		else
		  render :new
		end
	end

	private

	def project_params
		params.require(:project).permit(:name, :price, :time_target, :status, :user_id)
	end

end
