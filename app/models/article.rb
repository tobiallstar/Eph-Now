class Article < ActiveRecord::Base
  belongs_to :user
  has_many :article_categories
  has_many :categories, through: :article_categories
  validates :title, presence: true, length: { in: 3...50}
  validates :description, presence: true, length: { in: 10..1000000}
  validates :user_id, presence: true
end
