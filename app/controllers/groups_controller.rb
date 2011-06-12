class GroupsController < ApplicationController
  respond_to :html, :json

  before_filter :find_group, :only => ['show', 'edit', 'update', 'destroy']

  def index
    @groups = Group.all
    respond_with @groups
  end

  def show
    respond_with @group
  end

  def new
    @group = Group.new(params[:group])
    respond_with @group
  end

  def create
    @group = Group.new(params[:group])
    if @group.save
      flash[:notice] = 'Successfully created new group.'
    else
      flash[:notice] = 'Failed to create a new group.'
    end
    respond_with @group
  end

  def edit
    respond_with @group
  end

  def update
    if @group.update_attributes(params[:group])
      flash[:notice] = 'Successfully updated group.'
    else
      flash[:notice] = 'Failed to update group.'
    end
    respond_with @group
  end

  def destroy
    flash[:notice] = 'Successfully deleted group.' if @group.destroy
    respond_with @group
  end

private

  def find_group
    @group = Group.find(params[:id])
  end

end
