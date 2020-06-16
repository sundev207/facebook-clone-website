class UsersController < ApplicationController
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
end
