class TasksController < ApplicationController
  before_action :fetch_task, only: [:show, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show

  end

  def create
    @task = Task.new(task_params)
    @save_success = @task.save
  end

  def update
    @save_success = @task.update(task_params)
    render :create
  end

  def destroy
    @task.destroy
  end

private
  def fetch_task
    @task = Task.find_by(id: params[:id])
  end

  def task_params
    params.permit(:title)
  end
end
