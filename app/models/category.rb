class Category < ActiveRecord::Base
  has_many :meats

  validates :name, :presence => true
end
