#
class UsersController < ApplicationController
  def index
    users = User.all
    render json: users, each_serializer: UserSerializer
  end

  def show
    render json: User.find(params[:id]), serializer: UserSerializer
  end

  def create
    user = User.create(name: params[:data][:attributes][:name])
    render json: user, serializer: UserSerializer
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: user, serializer: UserSerializer
  end
end
