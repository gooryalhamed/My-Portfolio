class Admin::ProjectsController < ApplicationController
	before_action :find_project, only: [:edit, :update, :destroy]

	def index
		@projects = Project.all
		@project = Project.new
	end

	def create
		@project = Project.new(params_project)
		uploaded_io = params[:project][:image]
		if !uploaded_io.blank?
			File.open(Rails.root.join('public','uploads',uploaded_io.original_filename), "wb") do |file|
				file.write(uploaded_io.read)
			end
		end
		if @project.save
			@project.update(image: uploaded_io.original_filename) if !uploaded_io.blank?
			redirect_to admin_projects_path
		else
			render :new
		end
	end

	def cancel
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
			redirect_to admin_projects_path
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
