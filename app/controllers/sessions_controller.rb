class SessionsController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def new
  end

  def create

    user = User.find_by_email(params[:Email])
    if user && user.authenticate(params[:Password])
      session[:user_id] = user.id
      redirect_to '/sessions/'+ (user.id).to_s
    else
      flash[:error] = 'Invalid Email/Password'
      redirect_to '/sessions/new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/sessions/'
  end
end
