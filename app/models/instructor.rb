class Instructor < ActiveRecord::Base
  has_many :students
  has_one :squad
  has_many :negatives
  has_many :photos, through: :negatives
  has_many :comments
  has_one :codey
end
