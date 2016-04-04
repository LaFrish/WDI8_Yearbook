class Instructor < ActiveRecord::Base
  has_many :students
  belongs_to :wdi
end
