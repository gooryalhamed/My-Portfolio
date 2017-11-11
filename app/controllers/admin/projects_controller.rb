class Admin::ProjectsController < ApplicationController
	before_action :find_project, only: [:edit, :update, :destroy]
	def index
		@projects = Project.all
	end
	
	def new
		@project = Project.new
	end

	def create
		@project = Project.new(params_project)
		if !@project.save
			render :new
		end
	end

	def update
		uploaded_io = params[:project][:image]
		if !uploaded_io.blank?
			File.open(Rails.root.join('public','uploads',uploaded_io.original_filename), "wb") do |file|
				file.write(uploaded_io.read)
			end
		end
		if @project.update(params_project)
			@project.update(image: uploaded_io.original_filename) if !uploaded_io.blank?
		else
			render :edit
		end
	end

	def destroy
		@project.destroy
	end

	private
	def find_project
		@project = Project.find(params[:id])
	end
	def params_project
		params.require(:project).permit(:title, :description, :image, :link, :source)
	end
end
