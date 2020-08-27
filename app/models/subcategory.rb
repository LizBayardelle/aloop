class Subcategory < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :blogs
  has_many :resources

  has_one_attached :image


end
