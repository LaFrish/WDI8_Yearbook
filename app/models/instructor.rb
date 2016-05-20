class Instructor < ActiveRecord::Base
  has_many :students
  belongs_to :squad
  has_many :negatives
  has_many :photos, through: :negatives
  has_many :comments
  has_one :codey
  belongs_to :users
  belongs_to :wdiers
end
