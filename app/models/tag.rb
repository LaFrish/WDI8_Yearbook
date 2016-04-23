class Tag < ActiveRecord::Base
  attr_accessible :photos, :name, :tag_list
  acts_as_taggable
  has_many :taggings
  has_many :photos, through: :taggings
  belongs_to :students
  belongs_to :instructors
  belongs_to :codeys
  belongs_to :yearbook
end
