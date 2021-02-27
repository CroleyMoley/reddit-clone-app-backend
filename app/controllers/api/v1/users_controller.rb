class Api::V1::UsersController < ApplicationController

    def index 
       @users = User.all 
       render json: @users
    end
    

    def create
        #byebug
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            render json: UserSerializer.new(@user)
        else
            resp = {
                error: @user.errors.full_messages.to_sentence
            }
            render json: resp, status: :unprocessable_entry
        end
    end


    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
    
end
