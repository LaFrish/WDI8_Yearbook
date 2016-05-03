class Photo < ActiveRecord::Base
  has_many :negatives
  has_many :instructors, through: :negatives
  has_many :students, through: :negatives
  has_many :yearbook, through: :negatives
  acts_as_taggable
  acts_as_taggable_on :name

#
# validates_attachment :image,
#                      content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
# has_attached_file :image,
#                   styles: { thumb: ["64x64#", :jpg] }
#
#                   has_attached_file :image,
#                                     styles: { thumb: ["64x64#", :jpg],
#                                               original: ['500x500>', :jpg] },
#                                     convert_options: { thumb: "-quality 75 -strip",
#                                                        original: "-quality 85 -strip" },
#                                     storage: :s3,
#                                     s3_credentials: {access_key_id: ENV["AWS_KEY"], secret_access_key: ENV["AWS_SECRET"]},
#                                     bucket: "wdi8"
# s3_region: ENV["aws_region"],
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
