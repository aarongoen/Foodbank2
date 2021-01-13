class SessionsController < ApplicationController
    def new
        @user = User.new(params[:name])
        if @person.save
        else

        end
    end
    
    def create
        session[:name] = params[:name]
        redirect_to '/'
    end

    def destroy
        session.delete :name
    end
end