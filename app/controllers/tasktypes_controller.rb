#
class TasktypesController < ApplicationController
  def index
    task_types = Tasktype.all
    render json: task_types, each_serializer: TasktypeSerializer
  end

  def show
    render json: Tasktype.find(params[:id]), serializer: TasktypeSerializer
  end

  def create
    task_type = Tasktype.create(name: params[:data][:attributes][:name])
    render json: task_type, serializer: TasktypeSerializer
  end

  def destroy
    task_type = Tasktype.find(params[:id])
    task_type.destroy
    render json: task_type, serializer: TasktypeSerializer
  end
end
