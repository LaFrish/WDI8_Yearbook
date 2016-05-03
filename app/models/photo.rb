class Photo < ActiveRecord::Base
  has_many :negatives
  has_many :instructors, through: :negatives
  has_many :students, through: :negatives
  has_many :yearbook, through: :negatives
  acts_as_taggable
  acts_as_taggable_on :name
end

# def self.tagged_with(name)
#   Tag.find_by_name!(name).articles
# end
#
# def self.tag_counts
#   Tag.select("tags.*, count(taggings.tag_id) as count").
#     joins(:taggings).group("taggings.tag_id")
# end
#
# def tag_list
#   tags.map(&:name).join(", ")
# end
#
# def tag_list=(names)
#   self.tags = names.split(",").map do |n|
#     Tag.where(name: n.strip).first_or_create!
#   end
# end
