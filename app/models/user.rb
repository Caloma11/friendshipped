class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :friendships
  has_many :friendeds, :through => :friendships
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friended_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :user

  def friends
    (friendeds + inverse_friends).uniq
  end

  def is_friend_with?(user)
    friends.include?(user)
  end

end
