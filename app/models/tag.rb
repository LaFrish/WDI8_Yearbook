class Tag < ActiveRecord::Base
  belongs_to :photos
  belongs_to :students
  belongs_to :instructors
  belongs_to :codeys
  attr_accessible :photos, :name, :tag_list
  acts_as_taggable
end
