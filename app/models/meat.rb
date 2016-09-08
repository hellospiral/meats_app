class Meat < ActiveRecord::Base
  belongs_to :category
  has_many :reviews
  include PgSearch
  pg_search_scope :search, against: [:name, :description]

  def average_rating
    self.reviews.sum(:rating) / self.reviews.length
  end

  validates :name, :presence => true
end
