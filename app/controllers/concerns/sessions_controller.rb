class SessionsController < ApplicationController
    def signup
        
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
        session[:name] = params[:name]
        redirect_to '/'
    end

    def logout
        session.clear
    end
end