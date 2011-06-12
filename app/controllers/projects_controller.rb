class ProjectsController < ApplicationController
  respond_to :html, :json

  before_filter :find_project, :only => ['show', 'edit', 'update', 'destroy']

  def index
    @projects = Project.all
    respond_with @projects
  end

  def show
    respond_with @project
  end

  def new
    @project = Project.new(params[:project])
    respond_with @project
  end

  def create
    @project = Project.new(params[:project])
    if @project.save
      flash[:notice] = 'Successfully created new project.'
    else
      flash[:notice] = 'Failed to create a new project.'
    end
    respond_with @project
  end

  def edit
    respond_with @project
  end

  def update
    if @project.update_attributes(params[:project])
      flash[:notice] = 'Successfully updated project.'
    else
      flash[:notice] = 'Failed to update project.'
    end
    respond_with @project
  end

  def destroy
    flash[:notice] = 'Successfully deleted project.' if @project.destroy
    respond_with @project
  end

private

  def find_project
    @project = Project.find(params[:id])
  end

end
