class Photo < ActiveRecord::Base
  has_many :taggings
  has_many :tags, through: :taggings
  has_many :negatives
  has_many :instructors, through: :negatives
  has_many :students, through: :negatives
  has_many :users, through: :negatives
  has_many :wdiers, through: :negatives
  belongs_to :yearbook
  # acts_as_taggable
  # acts_as_taggable_on :name

  def all_tags=(names)
    self.tags = names.split(",").map do |name|
      Tag.where(name: name.strip).first_or_create!
    end
  end

  def all_tags
    self.tags.map(&:name).join(", ")
  end

  def self.tagged_with(name)
    Tag.find_by_name!(name).photos
  end

  def self.tag_counts
    Tag.select("tags.id, tags.name,count(taggings.tag_id) as count").joins(:taggings).group("taggings.tag_id, tags.id, tags.name")
  end

  def tag_list
    tags.map(&:name).join(", ")
  end

  def tag_list=(names)
    self.tags = names.split(",").map do |n|
      Tag.where(name: n.strip).first_or_create!
    end
  end

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
