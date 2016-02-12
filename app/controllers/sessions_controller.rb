class SessionsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    user = User.create(name: params[:name], email: params[:email], password: params[:password])
    redirect_to '/users/'+ (user.id).to_s
  end

  def edit
  end

  def update
  end

  def delete
  end
end
