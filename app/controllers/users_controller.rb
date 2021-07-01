class UsersController < ApplicationController
    def index
        render json: User.all
    end
    def new
        render 'new'
    end
    def show
        render json: User.where("id = '#{params[:id]}'")
    end
    def edit
        @users = User.where("id = '#{params[:id]}'")
        render 'edit'
    end
    def create
        User.create(first_name: params[:first_name], last_name: params[:last_name])
        redirect_to '/users'
    end
    def totalUser
        @user_count = User.count
        render :plain => 'Users Count: '+ @user_count.to_s
    end
end
