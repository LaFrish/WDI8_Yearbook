class Photo < ActiveRecord::Base
  has_many :negatives
  has_many :instructors, through: :negatives
  has_many :students, through: :negatives
  attr_accessible :photos, :name, :tag_list
  acts_as_taggable
end
