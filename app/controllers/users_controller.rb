class UsersController < ApplicationController
  def index
  end

  def show
  end

  def create
    user = User.new(name: params[:Name], email: params[:Email], password: params[:Password])

    if user.valid?
      user.save
      session[:user_id] = user.id
      redirect_to '/users/' + (user.id).to_s
    else
      flash[:errors] = ["can't be blank invalid"]
      redirect_to '/users/new'
    end
  end

  def edit
  end

  def update
  end

  def new
    @user = User.new
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/sessions/'
  end
end
