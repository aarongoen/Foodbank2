class RequestsController < ApplicationController
    
    def index
        @request = Request.all 
    end

    # def index
    #     @requests = current_request.items
    # end

    def new
        @request = Request.new
    end

    def create
        @request_item = @request.request_items.new(request_params)
        @request.save
        session[:request_id] = @request.id
        redirect_to coupon_path(@request)
    end

    def show
        @request = Request.find(params[:id])
    end

    def update
        @request_item = @request.request_items.find(params[:id])
        @request_item.update_attributes(order_params)
        @request_items = current_request.request_items
    end

    def edit

    end

    def destroy
        @request_item = @request.request_items.find(params[:id])
        @request_item.destroy
        @request_items = current_request.request_items
    end

    private

    def request_params
        params.require(:request).permit(:quantity, :measurement, :fullfilled)
    end

    def set_request
        @request = current_request
    end
end