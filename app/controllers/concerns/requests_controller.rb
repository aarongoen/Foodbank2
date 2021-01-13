class RequestsController < ApplicationController
    
   def show
    @request_items = current_request.request_items
   end
   
end