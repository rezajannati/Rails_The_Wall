class UsersController < ApplicationController
  def index 
    @comments= Comment.all
    @messages = Message.all
    @current_user = User.find(session[:user_id])
  end

  def new #form to make new user
    @user = User.new
  end

  def create #restful route to make new user!
    @user = User.new(user_params)
    if @user.save
      redirect_to ('/users') , notice: 'User was successfully created.'
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def show
    @user = User.find(params[:id])
  end
  #define strong parameters!
  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
end