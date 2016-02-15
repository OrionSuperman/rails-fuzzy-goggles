class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
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
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    if params[:Name].length >2
      user.name = params[:Name]
    end
    if params[:Email].length > 4
      user.email = params[:Email]
    end
    if user.valid?
      user.save
      redirect_to '/users/' + (user.id).to_s
    else
      flash[:errors] = "Invalid parameters for updating user"
      redirect_to '/users/' + (user.id).to_s
    end

  end

  def new
    @user = User.new
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/sessions/new'
  end
end
