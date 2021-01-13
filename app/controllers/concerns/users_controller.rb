class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.create(name: params[:name], password: params[:password])
        redirect_to 
    end

end