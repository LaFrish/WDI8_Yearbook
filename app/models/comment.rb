class Comment < ActiveRecord::Base
  belongs_to :instructors
  belongs_to :students
  belongs_to :users
end
