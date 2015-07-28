class ProjectsController < ApplicationController
  def index
      @projects = Project.last_created_projects(10)
  end
  def show
    #@project = Project.find params[:id]
    #rescue ActiveRecord::RecordNotFound
    #  render 'no_projects_found'
    unless @project = Project.find_by(id: params[:id])
      render 'no_projects_found'
    end
  end 
end
