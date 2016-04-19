class Comment < ActiveRecord::Base
  belongs_to :instructors
  belongs_to :students
end
