class SessionsController < ApplicationController

    def create
        user = User.find_by(username: params[:session][:username].downcase)
        if user && user.authenticate(params[:session][:password])
          session[:user_id] = user.id
          flash[:errors] = "Logged in successfully."
          redirect_to root_path
        else
          flash[:errors] = "There is something wrong with your login details."
          render 'new'
        end
      end
      def destroy
        session[:user_id] = nil
        flash[:errors] = "You have been logged out."
        redirect_to root_path
      end
end