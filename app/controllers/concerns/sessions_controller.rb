class SessionsController < ApplicationController
    def signup
        @user = User.new
    end
    
    def login
        @user = User.new
    end
        
    def new
        @user = User.find_by(name: params[:user][:name])
 
    end
    
    def welcome
        
    end
        
    def create
        @user = User.create(strong_params)
        # redirect_to '/'
    end

    def logout
        session.clear
    end

    private

    def strong_params
        params.require(:user).permit(name:, :password)
    end
end