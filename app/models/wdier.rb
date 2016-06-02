class Wdier < ActiveRecord::Base
  belongs_to :yearbook
  belongs_to :instructors
  belongs_to :students
  has_one :codey
  has_many :comments
  has_many :posts
  has_many :negatives
  has_many :photos, through: :negatives
end
