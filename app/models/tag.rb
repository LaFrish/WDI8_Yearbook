class Tag < ActiveRecord::Base
  belongs_to :photos
  belongs_to :students
  belongs_to :instructors
  belongs_to :codeys
end
