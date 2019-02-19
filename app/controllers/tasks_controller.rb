class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @tasks = Task.find(params[:id])
  end

  def new
    @tasks = Task.new
  end

  def create
    @tasks = Task.find(params[:id])
    Task.create(task_params)
    redirect_to task_path
  end
end
