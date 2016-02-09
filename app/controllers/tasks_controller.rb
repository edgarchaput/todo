class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
  @tasks = Task.all
  end

  private

  def task_params
    params.require(:task).permit(:name, :description, :due_date)
  end

  def set_task
  @task  = Task.find(params[:id])
  end

end
