class SessionsController < ApplicationController
    
    def logged_in
        if @user = User.find_by(name: params[:name])
            session[:user_id] = user.id
        end

    end
end
