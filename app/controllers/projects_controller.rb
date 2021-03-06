class ProjectsController < ApplicationController
	before_action :find_project, only: [:index, :show]
	before_action :authenticate_admin!, except: [:index, :show, :update, :edit, :destroy]

	def index
		@project = Project.all
			if @project = Project.all
	    		render('index')
    		else
    			redirect_to @project, notice: "No Projects to display"
    	end 
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new project_params

		if @project.save
			redirect_to @project, notice: "Your project was successfully saved!"
		else
			render 'new'
		end
	end

	def show
	end

	def edit
	end

	def update
		if @project.update project_params
			redirect_to @project, notice: "Your project was successfully updated!"
		else
			render 'edit'
		end
	end

	def destroy
		@project.destroy
		redirect_to projects_path
	end

    def find_project
		@project = Project.find(params[:id])
	end
	
	private

	def project_params
		params.require(:project).permit(:title, :description, :link, :slug)
	end
end
