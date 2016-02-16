class SecretsController < ApplicationController
	before_action :require_login, only: [:index, :create, :destroy]
  def index
  	@secrets = Secret.all
  end
  def create
  	secret = Secret.new(user: User.find(params[:id]), content: params[:'New Secret'])
  	if secret.valid?
  		secret.save
  		redirect_to '/users/' + (params[:id]).to_s
  	else
  		redirect_to '/users/' + (params[:id]).to_s
  	end
  end
  def destroy
  	puts params
  	puts '^' * 100
  	secret = Secret.find(params[:secret_id])
  	secret.destroy if secret.user == current_user
  	redirect_to "/users/#{current_user.id}"
  end
end
