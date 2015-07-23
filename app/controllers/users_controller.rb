class UsersController < ApplicationController
  before_filter :save_login_state, :only => [:new, :create]
	def index

	end



  def new
    @user = User.new 
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You have succesfully signed up, Please login!"
      flash[:color]= "valid"
      redirect_to login_path
    else
      flash[:notice] = "Form is invalid"
      flash[:color]= "invalid"
      render "new"
    end
  end

  def logon
  	
  end

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
