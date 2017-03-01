class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @photos = User.find(params[:id]).photos
  end

end
