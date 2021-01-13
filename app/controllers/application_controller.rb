class ApplicationController < ActionController::Base
    
    def current_request
        if Request.find_by_id(session[:request_id]).nil?
            Request.new
        else
            if Request.find_by_id(session[:request_id]).nil?
        end
    end

end

