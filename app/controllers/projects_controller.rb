class ProjectsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
      respond_to do |format|
      if @project.save
        format.html {redirect_to projects_path}
        format.js
      else
        format.html{render :new}
        format.js
      end
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    project_to_update = Project.find(params[:id])
    if project_to_update.update(project_params)
      redirect_to project_to_update
    end
  end

  def destroy
    project_to_delete = Project.find(params[:id])
    project_to_delete.destroy
    redirect_to projects_path
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :link, :video, photos: [])
  end

end


