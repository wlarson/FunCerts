class Tag < ApplicationRecord
  has_many :taggings
  has_many :certifications, through: :taggings
end
