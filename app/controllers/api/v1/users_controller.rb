class Api::V1::UsersController < ApplicationController

    def index 
       @users = User.all 
       render json: @users
    end
    

    def create
        @user = User.new(user_params)
        if @user.save
            render json: {
                message: "Login Success",
                data: user
            }
        else
            render json: {
                message: "Login Failed",
                data: "Please Try Again"
            }
        end
    end


    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
    
end
