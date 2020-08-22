class Subcategory < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :blog_categorizations
  has_many :blogs, through: :blog_categorizations

  has_many :resource_categorizations
  has_many :resources, through: :resource_categorizations
  
  has_one_attached :image


end
