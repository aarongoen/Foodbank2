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

    def update
        if @food.update(food_params)
            redirect_to @food
        else
            render :edit
        end
    end

    def destroy
        @food.destroy
        redirect_to products_path
    end

    private
    
    def food_params
        params.require(:food, :name)
    end

end