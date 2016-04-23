class Tag < ActiveRecord::Base
  acts_as_taggable
  acts_as_taggable_on 
  belongs_to :students
  belongs_to :instructors
  belongs_to :codeys
  belongs_to :yearbook
end
