class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :resource, optional: true
  belongs_to :user, optional: true

  has_one_attached :image

  has_many :blog_categorizations
  has_many :subcategories, through: :blog_categorizations
end
