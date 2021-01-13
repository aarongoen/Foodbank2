class RequestsController < ApplicationController
    
    def index
        @request = Request.all 
    end

    def create
        @request = Request.create(quantity: params[:quantity], fulfilled: params[:fulfilled], measurement: params[:measurement])
        redirect_to coupon_path(@request)
    end

    def new
        @request = Request.new
    end

    def show
        @request = Request.find(params[:id])
    end
end