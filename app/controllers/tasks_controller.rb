class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save

    redirect_to task_path(@task)
  end

  def edit
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)

    redirect_to task_path(@task)
  end

  private

  def task_params
    params[:task].permit(:title, :details)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
