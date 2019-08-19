class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def edit
  	@user = User.new(user_params)
  end

  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  end
end
