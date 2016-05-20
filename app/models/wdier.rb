class Wdier < ActiveRecord::Base
  belongs_to :squad
  belongs_to :instructors
  belongs_to :students
  has_one :codey
  has_many :comments
  has_many :negatives
  has_many :photos, through: :negatives
end
