class FoodsController < ApplicationController

    def index
        @foods = Food.all
    end

    def show
        
    end

    def new
        @food = Food.new
    end

    def edit

    end

    def create
        @food = Food.new(food_params)
        if @food.save
            redirect_to @food
        else
            render :new
        end
    end

    private
    
    def food_params
        params.require(:food, :name)
    end

end