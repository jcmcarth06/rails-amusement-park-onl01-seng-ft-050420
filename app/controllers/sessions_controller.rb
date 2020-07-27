class SessionsController < ApplicationController

    def new
    end

    def create

        # user = User.find_by(name: params[:user][:name])
        # user = user.try(:authenticate, params[:user][:password])
        # return redirect_to 'sessions/new' unless user
        # session[:user_id] = user.id
        # @user = user
        # redirect_to '/'
        
        # if !params[:name] || params[:name].empty?
        #     redirect_to '/login'
        # else
        #     session[:name] = params[:name]
        #     redirect_to '/'
        # end
    end

    def destroy
        session.delete :name
        redirect_to '/signin'
    end

end