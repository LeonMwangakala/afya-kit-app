class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :show]

  def index

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:info] = "Welcome to Afya Kit #{@user.username}"
      redirect_to user_path(@user) 
    else
      render 'new'
    end
  end

  def edit
    
  end

  def update
    if @user.update(user_params) 
        flash[:info] = "Your account was successfully updated"
        redirect_to users_path
    else
       render 'edit'  
    end
  end

  def show

  end

  private
  def set_user
    @user = User.find(params[:id])
  end
  def user_params
    params.require(:user).permit! 
  end
  
end