class ChildChore < ActiveRecord::Base
  attr_accessible :description, :reward_points

  validates :description, presence: true
  validates :reward_points, presence: true, numericality: {only_integer: true}

  belongs_to :user
  validates :user_id, presence: true
end
