class Admin::ProjectsController < ApplicationController
	before_action :find_project, only: [:edit, :update, :destroy]
	def new
		@project = Project.new
	end

	def create
		@project = Project.new(params_project)
		if @project.save
			redirect_to projects_path
		else
			render :new
		end
	end

	def edit
	end

	def update
		@project.update(params_project)
		redirect_to projects_path
	end

	def destroy
		@project.destroy
		redirect_to projects_path
	end
	private
	def find_project
		@project = Project.find(params[:id])
	end
	def params_project
		params.require(project).permit(:title, :description, :image, :link, :source)
	end
end
