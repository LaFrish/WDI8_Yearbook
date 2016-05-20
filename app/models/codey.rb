class Codey < ActiveRecord::Base
  belongs_to :students
  belongs_to :instructors
  belongs_to :users
  belongs_to :wdiers
end
