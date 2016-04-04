class Student < ActiveRecord::Base
  belongs_to :wdi
  belongs_to :squad
  belongs_to :instructor
  has_many :codey
end
