class Post < ActiveRecord::Base
  belongs_to :instructors
  belongs_to :students
  belongs_to :users
  belongs_to :wdiers
  has_many :comments
end
