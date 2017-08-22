#
class TasksController < ApplicationController

  def index
    tasks = Task.all
    render json: tasks, each_serializer: TaskSerializer
  end

  def create
     task = Task.create(api_params(:description, :user_id, :tasktype_id))
     raise unless task.persisted?
     render json: task, serializer: TaskSerializer
     Task::NotificationSlack.notify_on_slack(task.id, "created", task.description, task.status)
     #sms_message = "You have created the task with ID: #{task.id}. The description of the task is #{task.description} and its status is #{task.status}"
     #Task::SmsNotification.sms_notify(sms_message)
   end

  def update
    task.update(api_params(:status)) if Task::StatusTransition.status_transition(task, status_params)
    render json: task, serializer: TaskSerializer
    Task::NotificationSlack.notify_on_slack(task.id, "updated", task.description, task.status)
    sms_message = "You have updated the task with ID: #{task.id}. The description of the task is #{task.description} and its status is #{task.status}"
    #Task::SmsNotification.sms_notify(sms_message)
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    render json: task, serializer: TaskSerializer
    Task::NotificationSlack.notify_on_slack(task.id, "deleted", task.description, task.status)
    #sms_message = "You have deleted the task with ID: #{task.id}. The description of the task is #{task.description} and its status is #{task.status}"
    #Task::SmsNotification.sms_notify(sms_message)
  end

def show
    task = Task.find(params[:id])
    task.show
    render json: task, serializer: TaskSerializer
  end


  def status_params
    params[:data][:attributes][:status]
  end

  def task
    Task.find(params[:id])
  end

  def create_task_params
    {
      description: params[:data][:attributes][:description],
      user_id: params[:data][:attributes][:user_id],
      tasktype_id: params[:data][:attributes][:tasktype_id]
    }
  end
end
