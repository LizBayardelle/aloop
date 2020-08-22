class User < ApplicationRecord
  def full_name
    "#{first_name} #{last_name}"
  end

  has_many :blogs

end
