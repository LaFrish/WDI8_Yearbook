class Photo < ActiveRecord::Base
  has_many :negatives
  has_many :instructors, through: :negatives
  has_many :students, through: :negatives
end
