class Negative < ActiveRecord::Base
  belongs_to :photo
  belongs_to :instuctor
  belongs_to :student
  belongs_to :yearbook
end
