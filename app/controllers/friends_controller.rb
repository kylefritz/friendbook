class FriendsController < ApplicationController
  before_filter :require_signed_in!

  def index
    friend_ids = current_user.friends.pluck(:friend_id)
    @friends = User.find(friend_ids).sort_by(&:name)
  end
end
