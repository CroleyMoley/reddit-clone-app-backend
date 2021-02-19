module Api
    module V1
        class SessionsController < ApplicationController

            def create
                @user = User.find_by(username: params[:session][:username])
                if @user && @user.authenticate(params[:session][:password])
                    session[:user_id] = @user.id
                    render json: @user
                else
                    render json: {
                        error: "Invalid Credentials"
                    }
                end
            end

        
        end
    end
end
