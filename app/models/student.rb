class Student < ActiveRecord::Base
  belongs_to :squad
  has_many :instructors
  has_one :codey
end
