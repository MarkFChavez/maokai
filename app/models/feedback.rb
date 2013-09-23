class Feedback < ActiveRecord::Base
  attr_accessible :email, :comment

  scope :recent, lambda { |num=10| order("created_at DESC").limit(num) }
end
