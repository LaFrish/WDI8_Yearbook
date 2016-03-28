class Student < ActiveRecord::Base
  belongs_to :squad
  belongs_to :instructor
  # has_one :codey
end
