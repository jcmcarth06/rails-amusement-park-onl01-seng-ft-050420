class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params.merge(admin: false))
        return redirect_to '/users/new' unless @user.save
        session[:user_id] = @user.user_id
        redirect_to '/'
    end
    
    def private
        params.require(:user).permit(:name, :password, :nausea, :happiness, :tickets, :height, :admin)
    end



       
end