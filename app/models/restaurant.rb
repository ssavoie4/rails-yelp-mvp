class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORY, allow_nil: false }

  def avg_rating
    # ratings = []
    # self.reviews.each do |review|
    #   ratings << review
    # end
    ratings = reviews.map do |review|
      review.rating
    end
    ratings.reduce(:+)/ratings.size unless ratings.empty?
  end

end
