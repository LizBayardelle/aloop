class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :resource, optional: true
  belongs_to :user, optional: true

  has_one_attached :image

  belongs_to :subcategory
end
