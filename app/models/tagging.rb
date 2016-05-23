class Tagging < ActiveRecord::Base
  belongs_to :tag
  belongs_to :photo
  belongs_to :instructors
  belongs_to :students
  belongs_to :users
  belongs_to :wdiers
end
