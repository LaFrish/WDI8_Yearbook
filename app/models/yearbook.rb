class Yearbook < ActiveRecord::Base
  has_many :squads
  has_many :students
  has_many :instructors
  has_many :codeys
end
