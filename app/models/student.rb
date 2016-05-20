class Student < ActiveRecord::Base
  belongs_to :squad
  has_many :instructors
  has_one :codey
  has_many :comments
  has_many :negatives
  has_many :photos, through: :negatives
  belongs_to :users
end
