class Review < ActiveRecord::Base
  belongs_to :meat

  validates :rating, :comment, :presence => true
end
