class SecretsController < ApplicationController
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
  	Secret.find(params[:secret_id]).destroy
  	redirect_to '/users/' + (params[:user_id]).to_s
  end
end
