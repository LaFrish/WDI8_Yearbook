class Instructor < ActiveRecord::Base
  has_many :students
  has_one :squad
end
