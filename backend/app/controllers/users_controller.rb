class UsersController < ApplicationController

    def index #all users
        users = User.all
        render({json: users})
    end

    def show #individual record. one user
        user = User.find(params[:id])
        render({json: user})
    end

    def create
        user = User.new(username: params[:username], email: params[:email], password: params[:password])
        if user.save
          render json: user,status: :ok
        else
          render json: {data:user.errors},status: :unprocessable_entity
        end
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        render json: {status: 'SUCCESS', message:'Deleted user', data:user},status: :ok
    end
end
