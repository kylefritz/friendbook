class UsersController < ApplicationController
  before_filter :require_signed_in!

  def index; end

  def add_as_friend
    friend = User.find(params[:id])
    Friend.create!(user_id: current_user.id, friend_id: friend.id)
    redirect_to friends_path, notice: "Added #{friend.name} as a friends_path"
  end
end
