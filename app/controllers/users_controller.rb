class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @friends = current_user.friends
    @non_friends = User.all.filter{ |user| 
      !@friends.include?(user) &&
      current_user != user &&
      !current_user.pending_friends.include?(user) &&
      !current_user.friend_requests.include?(user)
    }
  end

  def new_avatar
    @user = current_user
  end

  def update_avatar
    @user = current_user
    if @user.update(avatar: params[:user][:avatar])
      redirect_to root_path, notice: 'avatar was updated successfully.'
    else
      redirect_to root_path, alert: 'avatar wasn\'t updated for some raison.'
    end
  end

  def new_friends
    
  end
end
