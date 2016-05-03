class Tag < ActiveRecord::Base
  attr_accessible :name
  has_many :taggings
  has_many :photos, through: :taggings
  has_many :students, through: :taggings
  has_many :instructors, through: :taggings
  has_many :codeys, through: :taggings
end
