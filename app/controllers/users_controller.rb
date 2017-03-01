class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @photos = Photo.where( :user_id => params[:id])
  end

  def liked
    @likes = Like.where( :user_id => current_user.id)
  end

end
