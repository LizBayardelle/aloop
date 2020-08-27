class Resource < ApplicationRecord
  belongs_to :user, optional: true

  belongs_to :subcategory

  has_many :blogs
  has_many :subscribers
  has_one_attached :document
  has_one_attached :sample
end
