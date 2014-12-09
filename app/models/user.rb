class User < ActiveRecord::Base
  has_many :friends

  def friends_with(user)
    # TODO: written to support use in the 1-way friend scenario
    user.friends.where(friend_id: id).any?
  end

end
